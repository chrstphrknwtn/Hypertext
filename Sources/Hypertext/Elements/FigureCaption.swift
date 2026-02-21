/// Creates a `<figcaption>` element.
///
/// ```swift
/// Figcaption { "A beautiful photo" }
/// ```
/// ```html
/// <figcaption>A beautiful photo</figcaption>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<figcaption>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/figcaption)
public func Figcaption(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("figcaption", attributes, [content()])
}
