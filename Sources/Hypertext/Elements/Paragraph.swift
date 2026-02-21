/// Creates a `<p>` element.
///
/// ```swift
/// P { "Hello world" }
/// ```
/// ```html
/// <p>Hello world</p>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<p>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/p)
public func P(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("p", attributes, [content()])
}
