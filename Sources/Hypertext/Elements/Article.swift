/// Creates an `<article>` element.
///
/// ```swift
/// Article { H2 { "Blog Post" } }
/// ```
/// ```html
/// <article><h2>Blog Post</h2></article>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<article>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/article)
public func Article(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("article", attributes, [content()])
}
