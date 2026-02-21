/// Creates a `<time>` element.
///
/// ```swift
/// Time(.init("datetime", .string("2025-01-15"))) { "January 15, 2025" }
/// ```
/// ```html
/// <time datetime="2025-01-15">January 15, 2025</time>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<time>` element node.
///
/// - SeeAlso: ``Time(datetime:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/time)
public func Time(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("time", attributes, [content()])
}

/// Creates a `<time>` element with a `datetime` attribute.
///
/// ```swift
/// Time(datetime: "2025-01-15") { "January 15, 2025" }
/// ```
/// ```html
/// <time datetime="2025-01-15">January 15, 2025</time>
/// ```
///
/// - Parameters:
///   - datetime: A machine-readable date/time value.
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: A `<time>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/time)
public func Time(datetime: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("time", [.init("datetime", .string(datetime))] + attributes, [content()])
}
