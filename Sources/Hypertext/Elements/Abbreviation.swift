/// Creates an `<abbr>` element.
///
/// ```swift
/// Abbr(.init("title", .string("HyperText Markup Language"))) { "HTML" }
/// ```
/// ```html
/// <abbr title="HyperText Markup Language">HTML</abbr>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<abbr>` element node.
///
/// - SeeAlso: ``Abbr(title:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/abbr)
public func Abbr(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("abbr", attributes, [content()])
}

/// Creates an `<abbr>` element with a `title` attribute.
///
/// ```swift
/// Abbr(title: "HyperText Markup Language") { "HTML" }
/// ```
/// ```html
/// <abbr title="HyperText Markup Language">HTML</abbr>
/// ```
///
/// - Parameters:
///   - title: The full expansion of the abbreviation.
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: An `<abbr>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/abbr)
public func Abbr(title: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("abbr", [.init("title", .string(title))] + attributes, [content()])
}
