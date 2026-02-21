/// Creates a `<section>` element.
///
/// ```swift
/// Section { H2 { "Chapter 1" } }
/// ```
/// ```html
/// <section><h2>Chapter 1</h2></section>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<section>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/section)
public func Section(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("section", attributes, [content()])
}
