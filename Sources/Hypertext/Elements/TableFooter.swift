/// Creates a `<tfoot>` element.
///
/// ```swift
/// Tfoot { Tr { Td { "Total" } } }
/// ```
/// ```html
/// <tfoot><tr><td>Total</td></tr></tfoot>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<tfoot>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tfoot)
public func Tfoot(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("tfoot", attributes, [content()])
}
