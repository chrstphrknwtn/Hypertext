/// Creates a `<cite>` element.
///
/// ```swift
/// Cite { "The Great Gatsby" }
/// ```
/// ```html
/// <cite>The Great Gatsby</cite>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<cite>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/cite)
public func Cite(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("cite", attributes, [content()])
}
