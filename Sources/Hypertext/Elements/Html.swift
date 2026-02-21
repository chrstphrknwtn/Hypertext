/// Creates an `<html>` element with arbitrary attributes.
///
/// ```swift
/// Html { Body { "Hello" } }
/// ```
/// ```html
/// <html><body>Hello</body></html>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<html>` element node.
///
/// - SeeAlso: ``Html(lang:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/html)
public func Html(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("html", attributes, [content()])
}

/// Creates an `<html>` element with a `lang` attribute.
///
/// ```swift
/// Html(lang: "en") { Body { "Hello" } }
/// ```
/// ```html
/// <html lang="en"><body>Hello</body></html>
/// ```
///
/// - Parameters:
///   - lang: The document language (e.g. `"en"`, `"fr"`, `"de"`).
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: An `<html>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/html)
public func Html(lang: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("html", [.init("lang", .string(lang))] + attributes, [content()])
}
