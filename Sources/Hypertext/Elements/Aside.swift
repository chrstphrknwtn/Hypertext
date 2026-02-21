/// Creates an `<aside>` element.
///
/// ```swift
/// Aside { P { "Related content" } }
/// ```
/// ```html
/// <aside><p>Related content</p></aside>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<aside>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/aside)
public func Aside(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("aside", attributes, [content()])
}
