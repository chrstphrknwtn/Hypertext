public enum Node: Sendable {
    case doctype
    case element(String, [Attribute], [Node])
    case voidElement(String, [Attribute])
    case text(String)
    case rawHTML(String)
    case rawText(String)
    case fragment([Node])
    case empty

    private static func escapeHTML(_ string: String) -> String {
        var result = ""
        result.reserveCapacity(string.count)
        for char in string {
            switch char {
            case "&": result += "&amp;"
            case "<": result += "&lt;"
            case ">": result += "&gt;"
            case "\"": result += "&quot;"
            default: result.append(char)
            }
        }
        return result
    }

    private static func isInvalidAttributeName(_ name: String) -> Bool {
        name.contains(where: { char in
            switch char {
            case " ", "\"", "'", "<", ">", "=", "/": true
            default: char.asciiValue.map { $0 < 32 } ?? false
            }
        })
    }

    private static func renderAttributes(_ attributes: [Attribute]) -> String {
        let attributesString = attributes.compactMap { attribute in
            /* Warn if attribute name is likely to produce an invalid HTML element */
            if isInvalidAttributeName(attribute.name) {
                print("""
                [HyperText Warning] Invalid attribute name '\(attribute.name)'.

                Attribute names must not contain spaces, quotes, '<', >', '/', '=', or control characters.
                This attribute will be rendered as-is but may produce invalid HTML.
                """)
            }

            if let stringValue = attribute.value.stringValue {
                return "\(attribute.name)=\"\(Node.escapeHTML(stringValue))\""
            } else if case let .bool(value) = attribute.value, value {
                return attribute.name
            } else {
                return nil
            }
        }.joined(separator: " ")

        return attributesString.isEmpty ? "" : " \(attributesString)"
    }
}

public extension Node {
    func render(_ options: RenderOptions = RenderOptions()) -> String {
        switch self {
        case .doctype:
            return "<!DOCTYPE html>"
        case let .element(tag, attributes, nodes):
            let attributesString = Node.renderAttributes(attributes)
            let innerHTML = nodes.map { node in
                node.render(options)
            }.joined()
            return "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
        case let .voidElement(tag, attributes):
            let attributesString = Node.renderAttributes(attributes)
            return options.xmlSelfClosingTags
                ? "<\(tag)\(attributesString) />"
                : "<\(tag)\(attributesString)>"
        case let .text(content):
            return Node.escapeHTML(content)
        case let .rawHTML(content):
            return content
        case let .rawText(content):
            return content
        case let .fragment(nodes):
            return nodes.map { node in
                node.render(options)
            }.joined()
        case .empty:
            return ""
        }
    }
}

public struct RenderOptions: Sendable {
    public let xmlSelfClosingTags: Bool

    public init(xmlSelfClosingTags: Bool = false) {
        self.xmlSelfClosingTags = xmlSelfClosingTags
    }

    public static let xml = RenderOptions(xmlSelfClosingTags: true)
}
