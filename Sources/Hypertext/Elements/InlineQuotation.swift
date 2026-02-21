/// Creates a `<q>` element.
///
/// ```swift
/// P { "She said "; Q { "hello" }; "." }
/// ```
/// ```html
/// <p>She said <q>hello</q>.</p>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<q>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/q)
public func Q(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("q", attributes, [content()])
}
