/// Creates a `<table>` element.
///
/// ```swift
/// Table {
///     Tr {
///         Td { "Cell" }
///     }
/// }
/// ```
/// ```html
/// <table><tr><td>Cell</td></tr></table>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<table>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table)
public func Table(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("table", attributes, [content()])
}
