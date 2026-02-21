/// Creates a `<u>` element.
///
/// ```swift
/// U { "misspelled" }
/// ```
/// ```html
/// <u>misspelled</u>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<u>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/u)
public func U(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("u", attributes, [content()])
}
