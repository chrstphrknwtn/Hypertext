/// Creates an `<address>` element.
///
/// ```swift
/// Address { A(href: "mailto:hello@example.com") { "hello@example.com" } }
/// ```
/// ```html
/// <address><a href="mailto:hello@example.com">hello@example.com</a></address>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<address>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/address)
public func Address(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("address", attributes, [content()])
}
