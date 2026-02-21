/// Creates a `<dfn>` element.
///
/// ```swift
/// P { Dfn { "HTML" }; " is a markup language." }
/// ```
/// ```html
/// <p><dfn>HTML</dfn> is a markup language.</p>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<dfn>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dfn)
public func Dfn(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("dfn", attributes, [content()])
}
