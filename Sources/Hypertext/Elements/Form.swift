/// Creates a `<form>` element.
///
/// ```swift
/// Form(.init("method", .string("post"))) {
///     Input(.init("type", .string("text")), .init("name", .string("email")))
/// }
/// ```
/// ```html
/// <form method="post"><input type="text" name="email"></form>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<form>` element node.
///
/// - SeeAlso: ``Form(action:method:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form)
public func Form(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("form", attributes, [content()])
}

/// Creates a `<form>` element with `action` and `method` attributes.
///
/// ```swift
/// Form(action: "/submit", method: "post") {
///     Input(.init("type", .string("text")), .init("name", .string("email")))
/// }
/// ```
/// ```html
/// <form action="/submit" method="post"><input type="text" name="email"></form>
/// ```
///
/// - Parameters:
///   - action: The URL to send form data to.
///   - method: The HTTP method (e.g. `"get"`, `"post"`).
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: A `<form>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form)
public func Form(action: String, method: String = "post", _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("form", [.init("action", .string(action)), .init("method", .string(method))] + attributes, [content()])
}
