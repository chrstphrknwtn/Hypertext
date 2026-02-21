public struct HTMLRenderer: Sendable {
    public let options: RenderOptions

    public init(_ options: RenderOptions = RenderOptions()) {
        self.options = options
    }

    public func render(_ node: Node) -> String {
        switch node {
        case .doctype:
            return "<!DOCTYPE html>"
        case let .element(tag, attributes, nodes):
            let attributesString = Self.renderAttributes(attributes)
            let innerHTML = nodes.map { node in
                self.render(node)
            }.joined()
            return "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
        case let .voidElement(tag, attributes):
            let attributesString = Self.renderAttributes(attributes)
            return options.xmlSelfClosingTags
                ? "<\(tag)\(attributesString) />"
                : "<\(tag)\(attributesString)>"
        case let .text(content):
            return Self.escapeHTML(content)
        case let .rawHTML(content):
            return content
        case let .rawText(content):
            return content
        case let .fragment(nodes):
            return nodes.map { node in
                self.render(node)
            }.joined()
        case .empty:
            return ""
        }
    }

    private static func renderAttributes(_ attributes: [Attribute]) -> String {
        let attributesString = attributes.compactMap { attribute in
            if let stringValue = attribute.value.stringValue {
                return "\(attribute.name)=\"\(self.escapeHTML(stringValue))\""
            } else if case let .bool(value) = attribute.value, value {
                return attribute.name
            } else {
                return nil
            }
        }.joined(separator: " ")

        return attributesString.isEmpty ? "" : " \(attributesString)"
    }

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
}

public struct RenderOptions: Sendable {
    public let xmlSelfClosingTags: Bool

    public init(xmlSelfClosingTags: Bool = false) {
        self.xmlSelfClosingTags = xmlSelfClosingTags
    }

    public static let xml = RenderOptions(xmlSelfClosingTags: true)
}
