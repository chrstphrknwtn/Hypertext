/// Creates a `<b>` element.
///
/// ```swift
/// B { "keyword" }
/// ```
/// ```html
/// <b>keyword</b>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<b>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/b)
public func B(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("b", attributes, [content()])
}
