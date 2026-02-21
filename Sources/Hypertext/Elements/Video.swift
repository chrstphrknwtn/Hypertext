/// Creates a `<video>` element.
///
/// ```swift
/// Video(.src("/video.mp4"), .controls()) { "Your browser does not support video." }
/// ```
/// ```html
/// <video src="/video.mp4" controls>Your browser does not support video.</video>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<video>` element node.
///
/// - SeeAlso: ``Video(src:_:content:)``
/// - SeeAlso: ``Video(src:controls:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video)
public func Video(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("video", attributes, [content()])
}

/// Creates a `<video>` element with a `src` attribute.
///
/// ```swift
/// Video(src: "/video.mp4", .controls()) { "Your browser does not support video." }
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

/// Creates a `<video>` element with `src` and `controls` attributes.
///
/// ```swift
/// Video(src: "/video.mp4", controls: true) { "Your browser does not support video." }
/// ```
/// ```html
/// <video src="/video.mp4" controls>Your browser does not support video.</video>
/// ```
///
/// - Parameters:
///   - src: The URL of the video.
///   - controls: Whether to display playback controls.
///   - attributes: Additional attributes.
///   - content: Fallback content.
/// - Returns: A `<video>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video)
public func Video(src: String, controls: Bool, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("video", [.init("src", .string(src)), .init("controls", .bool(controls))] + attributes, [content()])
}
