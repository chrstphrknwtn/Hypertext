/// Creates an `<s>` element.
///
/// ```swift
/// S { "Out of stock" }
/// ```
/// ```html
/// <s>Out of stock</s>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<s>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/s)
public func S(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("s", attributes, [content()])
}
