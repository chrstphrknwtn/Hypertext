/// Creates a `<dl>` element.
///
/// ```swift
/// Dl {
///     Dt { "HTML" }
///     Dd { "HyperText Markup Language" }
/// }
/// ```
/// ```html
/// <dl><dt>HTML</dt><dd>HyperText Markup Language</dd></dl>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<dl>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dl)
public func Dl(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("dl", attributes, [content()])
}

/// Creates a `<dt>` element.
///
/// ```swift
/// Dt { "HTML" }
/// ```
/// ```html
/// <dt>HTML</dt>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<dt>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dt)
public func Dt(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("dt", attributes, [content()])
}

/// Creates a `<dd>` element.
///
/// ```swift
/// Dd { "HyperText Markup Language" }
/// ```
/// ```html
/// <dd>HyperText Markup Language</dd>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<dd>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dd)
public func Dd(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("dd", attributes, [content()])
}
