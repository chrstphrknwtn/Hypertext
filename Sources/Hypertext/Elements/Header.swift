/// Creates a `<header>` element.
///
/// ```swift
/// Header { H1 { "Welcome" } }
/// ```
/// ```html
/// <header><h1>Welcome</h1></header>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<header>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/header)
public func Header(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("header", attributes, [content()])
}
