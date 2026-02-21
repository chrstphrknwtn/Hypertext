/// Creates an `<em>` element.
///
/// ```swift
/// Em { "emphasised text" }
/// ```
/// ```html
/// <em>emphasised text</em>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<em>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/em)
public func Em(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("em", attributes, [content()])
}
