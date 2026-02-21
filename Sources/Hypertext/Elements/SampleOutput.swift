/// Creates a `<samp>` element.
///
/// ```swift
/// Samp { "Error: file not found" }
/// ```
/// ```html
/// <samp>Error: file not found</samp>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<samp>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/samp)
public func Samp(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("samp", attributes, [content()])
}
