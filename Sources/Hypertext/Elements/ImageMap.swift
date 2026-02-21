/// Creates a `<map>` element.
///
/// ```swift
/// Map(name: "infographic") {
///     Area(href: "/about", alt: "About", .init("shape", .string("rect")), .init("coords", .string("0,0,100,100")))
/// }
/// ```
/// ```html
/// <map name="infographic"><area href="/about" alt="About" shape="rect" coords="0,0,100,100"></map>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<map>` element node.
///
/// - SeeAlso: ``Map(name:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/map)
public func Map(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("map", attributes, [content()])
}

/// Creates a `<map>` element with a `name` attribute.
///
/// ```swift
/// Map(name: "infographic") {
///     Area(href: "/about", alt: "About")
/// }
/// ```
/// ```html
/// <map name="infographic"><area href="/about" alt="About"></map>
/// ```
///
/// - Parameters:
///   - name: The name used to reference the map from an image's `usemap` attribute.
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: A `<map>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/map)
public func Map(name: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("map", [.init("name", .string(name))] + attributes, [content()])
}
