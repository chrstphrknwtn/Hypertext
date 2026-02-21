/// Creates a `<figure>` element.
///
/// ```swift
/// Figure {
///     Img(src: "/photo.jpg", alt: "A photo")
///     Figcaption { "A beautiful photo" }
/// }
/// ```
/// ```html
/// <figure><img src="/photo.jpg" alt="A photo"><figcaption>A beautiful photo</figcaption></figure>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<figure>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/figure)
public func Figure(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("figure", attributes, [content()])
}
