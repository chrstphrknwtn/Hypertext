/// Creates a `<link>` element with arbitrary attributes.
///
/// ```swift
/// Link(.init("rel", .string("canonical")), .init("href", .string("https://example.com")))
/// ```
/// ```html
/// <link rel="canonical" href="https://example.com">
/// ```
///
/// - Parameter attributes: The element's attributes.
/// - Returns: A `<link>` void element node.
///
/// - SeeAlso: ``Link(rel:href:)``
/// - SeeAlso: ``Link(rel:href:type:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link)
public func Link(_ attributes: Attribute...) -> Node {
    .voidElement("link", attributes)
}

/// Creates a `<link>` element with `rel` and `href` attributes.
///
/// ```swift
/// Link(rel: "stylesheet", href: "/styles.css")
/// ```
/// ```html
/// <link rel="stylesheet" href="/styles.css">
/// ```
///
/// - Parameters:
///   - rel: The relationship between the document and the linked resource.
///   - href: The URL of the linked resource.
///   - attributes: Additional attributes.
/// - Returns: A `<link>` void element node.
///
/// - SeeAlso: ``Link(rel:href:type:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link)
public func Link(rel: String, href: String, _ attributes: Attribute...) -> Node {
    .voidElement("link", [.init("rel", .string(rel)), .init("href", .string(href))] + attributes)
}

/// Creates a `<link>` element with `rel`, `href`, and `type` attributes.
///
/// ```swift
/// Link(rel: "icon", href: "/favicon.png", type: "image/png")
/// ```
/// ```html
/// <link rel="icon" href="/favicon.png" type="image/png">
/// ```
///
/// - Parameters:
///   - rel: The relationship between the document and the linked resource.
///   - href: The URL of the linked resource.
///   - type: The MIME type of the linked resource.
///   - attributes: Additional attributes.
/// - Returns: A `<link>` void element node.
///
/// - SeeAlso: ``Link(rel:href:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link)
public func Link(rel: String, href: String, type: String, _ attributes: Attribute...) -> Node {
    .voidElement("link", [.init("rel", .string(rel)), .init("href", .string(href)), .init("type", .string(type))] + attributes)
}
