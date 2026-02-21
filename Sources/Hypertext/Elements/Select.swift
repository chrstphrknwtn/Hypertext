/// Creates a `<select>` element.
///
/// ```swift
/// Select(.init("name", .string("country"))) {
///     Option(value: "au") { "Australia" }
///     Option(value: "nz") { "New Zealand" }
/// }
/// ```
/// ```html
/// <select name="country"><option value="au">Australia</option><option value="nz">New Zealand</option></select>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<select>` element node.
///
/// - SeeAlso: ``Select(name:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select)
public func Select(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("select", attributes, [content()])
}

/// Creates a `<select>` element with a `name` attribute.
///
/// ```swift
/// Select(name: "country") {
///     Option(value: "au") { "Australia" }
///     Option(value: "nz") { "New Zealand" }
/// }
/// ```
/// ```html
/// <select name="country"><option value="au">Australia</option><option value="nz">New Zealand</option></select>
/// ```
///
/// - Parameters:
///   - name: The select name for form submission.
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: A `<select>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select)
public func Select(name: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("select", [.init("name", .string(name))] + attributes, [content()])
}
