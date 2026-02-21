@resultBuilder
public struct HTMLBuilder {
    public static func buildBlock(_ nodes: Node...) -> Node {
        .fragment(nodes)
    }

    public static func buildExpression(_ string: String) -> Node {
        .text(string)
    }

    public static func buildExpression(_ node: Node) -> Node {
        node
    }

    public static func buildExpression(_ component: any HTMLComponent) -> Node {
        component.content
    }

    public static func buildOptional(_ node: Node?) -> Node {
        node ?? .empty
    }

    public static func buildEither(first node: Node) -> Node {
        node
    }

    public static func buildEither(second node: Node) -> Node {
        node
    }

    public static func buildArray(_ nodes: [Node]) -> Node {
        .fragment(nodes)
    }
}
