/// Creates a `<picture>` element.
///
/// ```swift
/// Picture {
///     Source(.srcset("/photo.avif"), .type("image/avif"))
///     Source(.srcset("/photo.webp"), .type("image/webp"))
///     Img(src: "/photo.jpg", alt: "A photo")
/// }
/// ```
/// ```html
/// <picture><source srcset="/photo.avif" type="image/avif"><source srcset="/photo.webp" type="image/webp"><img src="/photo.jpg" alt="A photo"></picture>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<picture>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/picture)
public func Picture(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("picture", attributes, [content()])
}
