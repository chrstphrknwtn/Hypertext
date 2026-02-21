/// Creates a `<body>` element.
///
/// ```swift
/// Body {
///     H1 { "Welcome" }
///     P { "Hello world" }
/// }
/// ```
/// ```html
/// <body><h1>Welcome</h1><p>Hello world</p></body>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<body>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/body)
public func Body(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("body", attributes, [content()])
}
