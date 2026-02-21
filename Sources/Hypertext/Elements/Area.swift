/// Creates an `<area>` void element.
///
/// ```swift
/// Area(.init("shape", .string("rect")), .init("coords", .string("0,0,100,100")))
/// ```
/// ```html
/// <area shape="rect" coords="0,0,100,100">
/// ```
///
/// - Parameter attributes: The element's attributes.
/// - Returns: An `<area>` void element node.
///
/// - SeeAlso: ``Area(href:alt:_:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area)
public func Area(_ attributes: Attribute...) -> Node {
    .voidElement("area", attributes)
}

/// Creates an `<area>` void element with `href` and `alt` attributes.
///
/// ```swift
/// Area(href: "/about", alt: "About")
/// ```
/// ```html
/// <area href="/about" alt="About">
/// ```
///
/// - Parameters:
///   - href: The URL the area links to.
///   - alt: Alternative text for the area.
///   - attributes: Additional attributes.
/// - Returns: An `<area>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area)
public func Area(href: String, alt: String, _ attributes: Attribute...) -> Node {
    .voidElement("area", [.init("href", .string(href)), .init("alt", .string(alt))] + attributes)
}
