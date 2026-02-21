/// Creates a `<sup>` element.
///
/// ```swift
/// P { "E=mc"; Sup { "2" } }
/// ```
/// ```html
/// <p>E=mc<sup>2</sup></p>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<sup>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/sup)
public func Sup(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("sup", attributes, [content()])
}
