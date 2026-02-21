/// Creates a `<blockquote>` element.
///
/// ```swift
/// Blockquote { P { "To be or not to be" } }
/// ```
/// ```html
/// <blockquote><p>To be or not to be</p></blockquote>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<blockquote>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/blockquote)
public func Blockquote(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("blockquote", attributes, [content()])
}
