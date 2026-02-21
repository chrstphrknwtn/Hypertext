/// Creates a `<ul>` element.
///
/// ```swift
/// Ul {
///     Li { "First" }
///     Li { "Second" }
/// }
/// ```
/// ```html
/// <ul><li>First</li><li>Second</li></ul>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<ul>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul)
public func Ul(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("ul", attributes, [content()])
}

/// Creates an `<ol>` element.
///
/// ```swift
/// Ol {
///     Li { "First" }
///     Li { "Second" }
/// }
/// ```
/// ```html
/// <ol><li>First</li><li>Second</li></ol>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<ol>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol)
public func Ol(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("ol", attributes, [content()])
}

/// Creates a `<li>` element.
///
/// ```swift
/// Li(.class("active")) { "Item" }
/// ```
/// ```html
/// <li class="active">Item</li>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<li>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/li)
public func Li(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("li", attributes, [content()])
}
