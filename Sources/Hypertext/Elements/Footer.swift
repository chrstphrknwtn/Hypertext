/// Creates a `<footer>` element.
///
/// ```swift
/// Footer { P { "Copyright 2025" } }
/// ```
/// ```html
/// <footer><p>Copyright 2025</p></footer>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<footer>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/footer)
public func Footer(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("footer", attributes, [content()])
}
