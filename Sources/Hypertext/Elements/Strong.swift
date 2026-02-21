/// Creates a `<strong>` element.
///
/// ```swift
/// Strong { "bold text" }
/// ```
/// ```html
/// <strong>bold text</strong>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<strong>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/strong)
public func Strong(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("strong", attributes, [content()])
}
