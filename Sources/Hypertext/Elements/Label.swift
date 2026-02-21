/// Creates a `<label>` element.
///
/// ```swift
/// Label { "Email" }
/// ```
/// ```html
/// <label>Email</label>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<label>` element node.
///
/// - SeeAlso: ``Label(for:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/label)
public func Label(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("label", attributes, [content()])
}

/// Creates a `<label>` element with a `for` attribute.
///
/// ```swift
/// Label(for: "email") { "Email" }
/// ```
/// ```html
/// <label for="email">Email</label>
/// ```
///
/// - Parameters:
///   - for: The `id` of the form element this label is associated with.
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: A `<label>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/label)
public func Label(for targetID: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("label", [.init("for", .string(targetID))] + attributes, [content()])
}
