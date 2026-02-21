/// Creates a `<small>` element.
///
/// ```swift
/// Small { "Fine print" }
/// ```
/// ```html
/// <small>Fine print</small>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<small>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/small)
public func Small(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("small", attributes, [content()])
}
