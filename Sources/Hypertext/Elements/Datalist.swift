/// Creates a `<datalist>` element.
///
/// ```swift
/// Datalist(.init("id", .string("browsers"))) {
///     Option(value: "Firefox") { "" }
///     Option(value: "Safari") { "" }
/// }
/// ```
/// ```html
/// <datalist id="browsers"><option value="Firefox"></option><option value="Safari"></option></datalist>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<datalist>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/datalist)
public func Datalist(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("datalist", attributes, [content()])
}
