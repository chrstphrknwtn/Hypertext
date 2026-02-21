/// Creates an `<object>` element.
///
/// ```swift
/// Object(.init("data", .string("/file.pdf")), .init("type", .string("application/pdf"))) {
///     P { "Your browser does not support PDFs." }
/// }
/// ```
/// ```html
/// <object data="/file.pdf" type="application/pdf"><p>Your browser does not support PDFs.</p></object>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: Fallback content.
/// - Returns: An `<object>` element node.
///
/// - SeeAlso: ``Object(data:type:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/object)
public func Object(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("object", attributes, [content()])
}

/// Creates an `<object>` element with `data` and `type` attributes.
///
/// ```swift
/// Object(data: "/file.pdf", type: "application/pdf") {
///     P { "Your browser does not support PDFs." }
/// }
/// ```
/// ```html
/// <object data="/file.pdf" type="application/pdf"><p>Your browser does not support PDFs.</p></object>
/// ```
///
/// - Parameters:
///   - data: The URL of the resource.
///   - type: The MIME type of the resource.
///   - attributes: Additional attributes.
///   - content: Fallback content.
/// - Returns: An `<object>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/object)
public func Object(data: String, type: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("object", [.init("data", .string(data)), .init("type", .string(type))] + attributes, [content()])
}
