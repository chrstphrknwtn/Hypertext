/// Creates a `<caption>` element.
///
/// ```swift
/// Caption { "Monthly expenses" }
/// ```
/// ```html
/// <caption>Monthly expenses</caption>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<caption>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/caption)
public func Caption(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("caption", attributes, [content()])
}
