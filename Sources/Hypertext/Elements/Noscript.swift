/// Creates a `<noscript>` element.
///
/// ```swift
/// Noscript { P { "JavaScript is required." } }
/// ```
/// ```html
/// <noscript><p>JavaScript is required.</p></noscript>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<noscript>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/noscript)
public func Noscript(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("noscript", attributes, [content()])
}
