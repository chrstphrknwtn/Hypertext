/// Creates an `<img>` void element with arbitrary attributes.
///
/// ```swift
/// Img(.init("src", .string("/photo.jpg")), .init("alt", .string("A photo")))
/// ```
/// ```html
/// <img src="/photo.jpg" alt="A photo">
/// ```
///
/// - Parameter attributes: The element's attributes.
/// - Returns: An `<img>` void element node.
///
/// - SeeAlso: ``Img(src:alt:_:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img)
public func Img(_ attributes: Attribute...) -> Node {
    .voidElement("img", attributes)
}

/// Creates an `<img>` void element with `src` and `alt` attributes.
///
/// ```swift
/// Img(src: "/photo.jpg", alt: "A photo")
/// ```
/// ```html
/// <img src="/photo.jpg" alt="A photo">
/// ```
///
/// - Parameters:
///   - src: The URL of the image.
///   - alt: Alternative text describing the image.
///   - attributes: Additional attributes.
/// - Returns: An `<img>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img)
public func Img(src: String, alt: String, _ attributes: Attribute...) -> Node {
    .voidElement("img", [.init("src", .string(src)), .init("alt", .string(alt))] + attributes)
}

/// Creates an `<img>` void element with `src`, `alt`, and `srcset` attributes.
///
/// ```swift
/// Img(src: "/photo.jpg", alt: "A photo", srcset: "/photo-2x.jpg 2x, /photo-3x.jpg 3x")
/// ```
/// ```html
/// <img src="/photo.jpg" alt="A photo" srcset="/photo-2x.jpg 2x, /photo-3x.jpg 3x">
/// ```
///
/// - Parameters:
///   - src: The URL of the fallback image.
///   - alt: Alternative text describing the image.
///   - srcset: A comma-separated list of image sources and descriptors.
///   - attributes: Additional attributes.
/// - Returns: An `<img>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#srcset)
public func Img(src: String, alt: String, srcset: String, _ attributes: Attribute...) -> Node {
    .voidElement("img", [.init("src", .string(src)), .init("alt", .string(alt)), .init("srcset", .string(srcset))] + attributes)
}
