/// Creates a `<button>` element.
///
/// ```swift
/// Button { "Submit" }
/// ```
/// ```html
/// <button>Submit</button>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<button>` element node.
///
/// - SeeAlso: ``Button(type:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button)
public func Button(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("button", attributes, [content()])
}

/// Creates a `<button>` element with a `type` attribute.
///
/// ```swift
/// Button(type: "submit") { "Send" }
/// ```
/// ```html
/// <button type="submit">Send</button>
/// ```
///
/// - Parameters:
///   - type: The button type (e.g. `"submit"`, `"button"`, `"reset"`).
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: A `<button>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button)
public func Button(type: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("button", [.init("type", .string(type))] + attributes, [content()])
}
