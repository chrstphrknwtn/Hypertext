/// Creates a `<details>` element.
///
/// ```swift
/// Details {
///     Summary { "More info" }
///     P { "Hidden content here." }
/// }
/// ```
/// ```html
/// <details><summary>More info</summary><p>Hidden content here.</p></details>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<details>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/details)
public func Details(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("details", attributes, [content()])
}
