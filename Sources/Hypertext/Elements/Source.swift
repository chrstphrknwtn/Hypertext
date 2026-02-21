/// Creates a `<source>` void element.
///
/// ```swift
/// Source(.src("/video.webm"), .type("video/webm"))
/// ```
/// ```html
/// <source src="/video.webm" type="video/webm">
/// ```
///
/// - Parameter attributes: The element's attributes.
/// - Returns: A `<source>` void element node.
///
/// - SeeAlso: ``Source(src:type:_:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source)
public func Source(_ attributes: Attribute...) -> Node {
    .voidElement("source", attributes)
}

/// Creates a `<source>` void element with `src` and `type` attributes.
///
/// ```swift
/// Source(src: "/video.mp4", type: "video/mp4")
/// ```
/// ```html
/// <source src="/video.mp4" type="video/mp4">
/// ```
///
/// - Parameters:
///   - src: The URL of the media resource.
///   - type: The MIME type of the resource.
///   - attributes: Additional attributes.
/// - Returns: A `<source>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source)
public func Source(src: String, type: String, _ attributes: Attribute...) -> Node {
    .voidElement("source", [.init("src", .string(src)), .init("type", .string(type))] + attributes)
}
