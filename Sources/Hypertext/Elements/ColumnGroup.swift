/// Creates a `<colgroup>` element.
///
/// ```swift
/// Colgroup {
///     Col(.span(2))
/// }
/// ```
/// ```html
/// <colgroup><col span="2"></colgroup>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<colgroup>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/colgroup)
public func Colgroup(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("colgroup", attributes, [content()])
}
