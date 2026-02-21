/// Creates an `<audio>` element.
///
/// ```swift
/// Audio(.src("/song.mp3"), .type("audio/mpeg")) { "Your browser does not support audio." }
/// ```
/// ```html
/// <audio src="/song.mp3" type="audio/mpeg">Your browser does not support audio.</audio>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<audio>` element node.
///
/// - SeeAlso: ``Audio(src:_:content:)``
/// - SeeAlso: ``Audio(src:controls:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio)
public func Audio(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("audio", attributes, [content()])
}

/// Creates an `<audio>` element with a `src` attribute.
///
/// ```swift
/// Audio(src: "/song.mp3", .controls()) { "Your browser does not support audio." }
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

/// Creates an `<audio>` element with `src` and `controls` attributes.
///
/// ```swift
/// Audio(src: "/song.mp3", controls: true) { "Your browser does not support audio." }
/// ```
/// ```html
/// <audio src="/song.mp3" controls>Your browser does not support audio.</audio>
/// ```
///
/// - Parameters:
///   - src: The URL of the audio.
///   - controls: Whether to display playback controls.
///   - attributes: Additional attributes.
///   - content: Fallback content.
/// - Returns: An `<audio>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio)
public func Audio(src: String, controls: Bool, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("audio", [.init("src", .string(src)), .init("controls", .bool(controls))] + attributes, [content()])
}
