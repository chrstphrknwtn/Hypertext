/// Creates a `<head>` element.
///
/// ```swift
/// Head {
///     Title("My Site")
///     Meta(charset: "utf-8")
/// }
/// ```
/// ```html
/// <head><title>My Site</title><meta charset="utf-8"></head>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<head>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/head)
public func Head(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("head", attributes, [content()])
}
