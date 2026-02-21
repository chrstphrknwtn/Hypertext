/// Creates a `<legend>` element.
///
/// ```swift
/// Legend { "Personal Info" }
/// ```
/// ```html
/// <legend>Personal Info</legend>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<legend>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/legend)
public func Legend(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("legend", attributes, [content()])
}
