/// Creates an `<iframe>` element.
///
/// ```swift
/// Iframe(.src("https://example.com")) {}
/// ```
/// ```html
/// <iframe src="https://example.com"></iframe>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<iframe>` element node.
///
/// - SeeAlso: ``Iframe(src:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe)
public func Iframe(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("iframe", attributes, [content()])
}

/// Creates an `<iframe>` element with a `src` attribute.
///
/// ```swift
/// Iframe(src: "https://example.com") {}
/// ```
/// ```html
/// <iframe src="https://example.com"></iframe>
/// ```
///
/// - Parameters:
///   - src: The URL of the embedded content.
///   - attributes: Additional attributes.
///   - content: Fallback content.
/// - Returns: An `<iframe>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe)
public func Iframe(src: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("iframe", [.init("src", .string(src))] + attributes, [content()])
}
