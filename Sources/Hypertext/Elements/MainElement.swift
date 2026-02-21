/// Creates a `<main>` element.
///
/// ```swift
/// Main { P { "Primary content" } }
/// ```
/// ```html
/// <main><p>Primary content</p></main>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<main>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/main)
public func Main(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("main", attributes, [content()])
}
