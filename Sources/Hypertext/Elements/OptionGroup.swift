/// Creates an `<optgroup>` element.
///
/// ```swift
/// Optgroup(.init("label", .string("Oceania"))) {
///     Option(value: "au") { "Australia" }
///     Option(value: "nz") { "New Zealand" }
/// }
/// ```
/// ```html
/// <optgroup label="Oceania"><option value="au">Australia</option><option value="nz">New Zealand</option></optgroup>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<optgroup>` element node.
///
/// - SeeAlso: ``Optgroup(label:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup)
public func Optgroup(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("optgroup", attributes, [content()])
}

/// Creates an `<optgroup>` element with a `label` attribute.
///
/// ```swift
/// Optgroup(label: "Oceania") {
///     Option(value: "au") { "Australia" }
///     Option(value: "nz") { "New Zealand" }
/// }
/// ```
/// ```html
/// <optgroup label="Oceania"><option value="au">Australia</option><option value="nz">New Zealand</option></optgroup>
/// ```
///
/// - Parameters:
///   - label: The label for the option group.
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: An `<optgroup>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup)
public func Optgroup(label: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("optgroup", [.init("label", .string(label))] + attributes, [content()])
}
