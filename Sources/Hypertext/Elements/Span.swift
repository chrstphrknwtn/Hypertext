/// Creates a `<span>` element.
///
/// ```swift
/// Span(.class("highlight")) { "important" }
/// ```
/// ```html
/// <span class="highlight">important</span>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<span>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/span)
public func Span(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("span", attributes, [content()])
}
