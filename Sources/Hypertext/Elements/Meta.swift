/// Creates a `<meta>` element with a `charset` attribute.
///
/// ```swift
/// Meta(charset: "utf-8")
/// ```
/// ```html
/// <meta charset="utf-8">
/// ```
///
/// - Note: In HTML5, the only valid value is `"utf-8"`.
///
/// - Parameter charset: The character encoding for the document.
/// - Returns: A `<meta>` void element node.
///
/// - SeeAlso: ``Meta(name:content:)``
/// - SeeAlso: ``Meta(httpEquiv:content:)``
/// - SeeAlso: ``Meta(itemprop:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta)
public func Meta(charset: String) -> Node {
    .voidElement("meta", [.init("charset", .string(charset))])
}

/// Creates a `<meta>` element with `name` and `content` attributes.
///
/// ```swift
/// Meta(name: "description", content: "A Swift HTML library")
/// ```
/// ```html
/// <meta name="description" content="A Swift HTML library">
/// ```
///
/// - Parameters:
///   - name: The metadata name (e.g. `"description"`, `"viewport"`, `"author"`, `"color-scheme"`).
///   - content: The metadata value.
/// - Returns: A `<meta>` void element node.
///
/// - SeeAlso: ``Meta(charset:)``
/// - SeeAlso: ``Meta(name:content:media:)``
/// - SeeAlso: ``Meta(httpEquiv:content:)``
/// - SeeAlso: ``Meta(itemprop:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta)
public func Meta(name: String, content: String) -> Node {
    .voidElement("meta", [
        .init("name", .string(name)),
        .init("content", .string(content)),
    ])
}

/// Creates a `<meta>` element with `name`, `content`, and `media` attributes.
///
/// ```swift
/// Meta(name: "theme-color", content: "#ffffff", media: "(prefers-color-scheme: light)")
/// ```
/// ```html
/// <meta name="theme-color" content="#ffffff" media="(prefers-color-scheme: light)">
/// ```
///
/// - Note: The `media` attribute only has effect when `name` is `"theme-color"`.
///
/// - Parameters:
///   - name: The metadata name.
///   - content: The metadata value.
///   - media: A valid media query list.
/// - Returns: A `<meta>` void element node.
///
/// - SeeAlso: ``Meta(name:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta)
public func Meta(name: String, content: String, media: String) -> Node {
    .voidElement("meta", [
        .init("name", .string(name)),
        .init("content", .string(content)),
        .init("media", .string(media)),
    ])
}

/// Creates a `<meta>` element with `http-equiv` and `content` attributes.
///
/// ```swift
/// Meta(httpEquiv: "content-security-policy", content: "default-src 'self'")
/// ```
/// ```html
/// <meta http-equiv="content-security-policy" content="default-src 'self'">
/// ```
///
/// - Parameters:
///   - httpEquiv: The pragma directive (e.g. `"content-security-policy"`, `"refresh"`, `"content-type"`).
///   - content: The directive value.
/// - Returns: A `<meta>` void element node.
///
/// - SeeAlso: ``Meta(charset:)``
/// - SeeAlso: ``Meta(name:content:)``
/// - SeeAlso: ``Meta(itemprop:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta)
public func Meta(httpEquiv: String, content: String) -> Node {
    .voidElement("meta", [
        .init("http-equiv", .string(httpEquiv)),
        .init("content", .string(content)),
    ])
}

/// Creates a `<meta>` element with `itemprop` and `content` attributes for Microdata.
///
/// ```swift
/// Meta(itemprop: "datePublished", content: "2025-01-15")
/// ```
/// ```html
/// <meta itemprop="datePublished" content="2025-01-15">
/// ```
///
/// - Note: The `itemprop` attribute must not be set on a `<meta>` element that
///   has a `name`, `http-equiv`, or `charset` attribute.
///
/// - Parameters:
///   - itemprop: The Microdata property name.
///   - content: The property value.
/// - Returns: A `<meta>` void element node.
///
/// - SeeAlso: ``Meta(name:content:)``
/// - SeeAlso: ``Meta(charset:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/itemprop)
public func Meta(itemprop: String, content: String) -> Node {
    .voidElement("meta", [
        .init("itemprop", .string(itemprop)),
        .init("content", .string(content)),
    ])
}
