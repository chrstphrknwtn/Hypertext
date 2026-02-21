/// Creates an `<embed>` void element.
///
/// ```swift
/// Embed(.src("/diagram.svg"), .type("image/svg+xml"))
/// ```
/// ```html
/// <embed src="/diagram.svg" type="image/svg+xml">
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
/// Embed(src: "/diagram.svg", type: "image/svg+xml")
/// ```
/// ```html
/// <embed src="/diagram.svg" type="image/svg+xml">
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
