/// Creates an `<i>` element.
///
/// ```swift
/// I { "Homo sapiens" }
/// ```
/// ```html
/// <i>Homo sapiens</i>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<i>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/i)
public func I(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("i", attributes, [content()])
}
