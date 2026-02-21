/// Creates an `<a>` element with arbitrary attributes.
///
/// ```swift
/// A(.init("href", .string("/about"))) { "About" }
/// ```
/// ```html
/// <a href="/about">About</a>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's child content.
/// - Returns: An `<a>` element node.
///
/// - SeeAlso: ``A(href:_:content:)``
/// - SeeAlso: ``A(href:target:_:content:)``
/// - SeeAlso: ``A(href:target:rel:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a)
public func A(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("a", attributes, [content()])
}

/// Creates an `<a>` element with an `href` attribute.
///
/// ```swift
/// A(href: "/contact") { "Contact Us" }
/// ```
/// ```html
/// <a href="/contact">Contact Us</a>
/// ```
///
/// - Parameters:
///   - href: The URL of the hyperlink.
///   - attributes: Additional attributes.
///   - content: The element's child content.
/// - Returns: An `<a>` element node.
///
/// - SeeAlso: ``A(href:target:_:content:)``
/// - SeeAlso: ``A(href:target:rel:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a)
public func A(href: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("a", [.init("href", .string(href))] + attributes, [content()])
}

/// Creates an `<a>` element with `href` and `target` attributes.
///
/// ```swift
/// A(href: "/contact", target: "_blank") { "Contact Us" }
/// ```
/// ```html
/// <a href="/contact" target="_blank">Contact Us</a>
/// ```
///
/// - Parameters:
///   - href: The URL of the hyperlink.
///   - target: The browsing context for the link (e.g. `"_blank"`, `"_self"`).
///   - attributes: Additional attributes.
///   - content: The element's child content.
/// - Returns: An `<a>` element node.
///
/// - SeeAlso: ``A(href:_:content:)``
/// - SeeAlso: ``A(href:target:rel:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a)
public func A(href: String, target: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("a", [.init("href", .string(href)), .init("target", .string(target))] + attributes, [content()])
}

/// Creates an `<a>` element with `href`, `target`, and `rel` attributes.
///
/// ```swift
/// A(href: "https://example.com", target: "_blank", rel: "noopener") { "Example" }
/// ```
/// ```html
/// <a href="https://example.com" target="_blank" rel="noopener">Example</a>
/// ```
///
/// - Parameters:
///   - href: The URL of the hyperlink.
///   - target: The browsing context for the link (e.g. `"_blank"`, `"_self"`).
///   - rel: The relationship between the current document and the linked URL.
///   - attributes: Additional attributes.
///   - content: The element's child content.
/// - Returns: An `<a>` element node.
///
/// - SeeAlso: ``A(href:_:content:)``
/// - SeeAlso: ``A(href:target:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a)
public func A(href: String, target: String, rel: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("a", [.init("href", .string(href)), .init("target", .string(target)), .init("rel", .string(rel))] + attributes, [content()])
}
