/// Creates a `<var>` element.
///
/// ```swift
/// P { "The variable "; Var { "x" }; " equals 5." }
/// ```
/// ```html
/// <p>The variable <var>x</var> equals 5.</p>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<var>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/var)
public func Var(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("var", attributes, [content()])
}
