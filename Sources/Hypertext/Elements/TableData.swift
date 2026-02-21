/// Creates a `<td>` element.
///
/// ```swift
/// Td { "Cell content" }
/// ```
/// ```html
/// <td>Cell content</td>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<td>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td)
public func Td(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("td", attributes, [content()])
}
