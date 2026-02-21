/// Creates a `<video>` element.
///
/// ```swift
/// Video(.init("controls", .bool(true))) {
///     Source(src: "/video.mp4", type: "video/mp4")
/// }
/// ```
/// ```html
/// <video controls><source src="/video.mp4" type="video/mp4"></video>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<video>` element node.
///
/// - SeeAlso: ``Video(src:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video)
public func Video(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("video", attributes, [content()])
}

/// Creates a `<video>` element with a `src` attribute.
///
/// ```swift
/// Video(src: "/video.mp4", .init("controls", .bool(true))) { "Your browser does not support video." }
/// ```
/// ```html
/// <video src="/video.mp4" controls>Your browser does not support video.</video>
/// ```
///
/// - Parameters:
///   - src: The URL of the video.
///   - attributes: Additional attributes.
///   - content: Fallback content.
/// - Returns: A `<video>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video)
public func Video(src: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("video", [.init("src", .string(src))] + attributes, [content()])
}
