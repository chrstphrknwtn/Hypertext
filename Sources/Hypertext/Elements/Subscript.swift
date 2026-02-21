/// Creates a `<sub>` element.
///
/// ```swift
/// P { "H"; Sub { "2" }; "O" }
/// ```
/// ```html
/// <p>H<sub>2</sub>O</p>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<sub>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/sub)
public func Sub(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("sub", attributes, [content()])
}
