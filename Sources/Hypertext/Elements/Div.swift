/// Creates a `<div>` element.
///
/// ```swift
/// Div(.class("container")) { P { "Hello" } }
/// ```
/// ```html
/// <div class="container"><p>Hello</p></div>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<div>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/div)
public func Div(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("div", attributes, [content()])
}
