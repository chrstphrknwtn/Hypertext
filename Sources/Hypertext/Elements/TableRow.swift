/// Creates a `<tr>` element.
///
/// ```swift
/// Tr { Td { "Cell" } }
/// ```
/// ```html
/// <tr><td>Cell</td></tr>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<tr>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tr)
public func Tr(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("tr", attributes, [content()])
}
