/// Creates an `<output>` element.
///
/// ```swift
/// Output(.for("a b")) { "60" }
/// ```
/// ```html
/// <output for="a b">60</output>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<output>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/output)
public func Output(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("output", attributes, [content()])
}
