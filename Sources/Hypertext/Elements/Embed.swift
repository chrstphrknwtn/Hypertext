/// Creates an `<embed>` void element.
///
/// ```swift
/// Embed(.init("src", .string("/game.swf")), .init("type", .string("application/x-shockwave-flash")))
/// ```
/// ```html
/// <embed src="/game.swf" type="application/x-shockwave-flash">
/// ```
///
/// - Parameter attributes: The element's attributes.
/// - Returns: An `<embed>` void element node.
///
/// - SeeAlso: ``Embed(src:type:_:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/embed)
public func Embed(_ attributes: Attribute...) -> Node {
    .voidElement("embed", attributes)
}

/// Creates an `<embed>` void element with `src` and `type` attributes.
///
/// ```swift
/// Embed(src: "/animation.svg", type: "image/svg+xml")
/// ```
/// ```html
/// <embed src="/animation.svg" type="image/svg+xml">
/// ```
///
/// - Parameters:
///   - src: The URL of the resource.
///   - type: The MIME type of the resource.
///   - attributes: Additional attributes.
/// - Returns: An `<embed>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/embed)
public func Embed(src: String, type: String, _ attributes: Attribute...) -> Node {
    .voidElement("embed", [.init("src", .string(src)), .init("type", .string(type))] + attributes)
}
