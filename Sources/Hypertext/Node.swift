public enum Node: Sendable {
    case doctype
    case element(String, [Attribute], [Node])
    case voidElement(String, [Attribute])
    case text(String)
    case rawHTML(String)
    case rawText(String)
    case fragment([Node])
    case empty
}
