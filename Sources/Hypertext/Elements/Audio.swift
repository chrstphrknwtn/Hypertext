/// Creates an `<audio>` element.
///
/// ```swift
/// Audio(.init("controls", .bool(true))) {
///     Source(src: "/song.mp3", type: "audio/mpeg")
/// }
/// ```
/// ```html
/// <audio controls><source src="/song.mp3" type="audio/mpeg"></audio>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<audio>` element node.
///
/// - SeeAlso: ``Audio(src:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio)
public func Audio(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("audio", attributes, [content()])
}

/// Creates an `<audio>` element with a `src` attribute.
///
/// ```swift
/// Audio(src: "/song.mp3", .init("controls", .bool(true))) { "Your browser does not support audio." }
/// ```
/// ```html
/// <audio src="/song.mp3" controls>Your browser does not support audio.</audio>
/// ```
///
/// - Parameters:
///   - src: The URL of the audio.
///   - attributes: Additional attributes.
///   - content: Fallback content.
/// - Returns: An `<audio>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio)
public func Audio(src: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("audio", [.init("src", .string(src))] + attributes, [content()])
}
