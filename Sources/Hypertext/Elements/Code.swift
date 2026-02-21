/// Creates a `<code>` element.
///
/// ```swift
/// Code { "let x = 42" }
/// ```
/// ```html
/// <code>let x = 42</code>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<code>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/code)
public func Code(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("code", attributes, [content()])
}
