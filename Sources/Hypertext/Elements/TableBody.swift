/// Creates a `<tbody>` element.
///
/// ```swift
/// Tbody { Tr { Td { "Data" } } }
/// ```
/// ```html
/// <tbody><tr><td>Data</td></tr></tbody>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<tbody>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tbody)
public func Tbody(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("tbody", attributes, [content()])
}
