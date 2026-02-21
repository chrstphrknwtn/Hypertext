/// Creates a `<mark>` element.
///
/// ```swift
/// P { "This is "; Mark { "highlighted" }; " text." }
/// ```
/// ```html
/// <p>This is <mark>highlighted</mark> text.</p>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<mark>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/mark)
public func Mark(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("mark", attributes, [content()])
}
