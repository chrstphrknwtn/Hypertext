/// Creates a `<nav>` element.
///
/// ```swift
/// Nav {
///     A(href: "/") { "Home" }
///     A(href: "/about") { "About" }
/// }
/// ```
/// ```html
/// <nav><a href="/">Home</a><a href="/about">About</a></nav>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<nav>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nav)
public func Nav(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("nav", attributes, [content()])
}
