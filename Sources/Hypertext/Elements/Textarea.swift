/// Creates a `<textarea>` element.
///
/// ```swift
/// Textarea(.init("name", .string("message"))) { "Default text" }
/// ```
/// ```html
/// <textarea name="message">Default text</textarea>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<textarea>` element node.
///
/// - SeeAlso: ``Textarea(name:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea)
public func Textarea(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("textarea", attributes, [content()])
}

/// Creates a `<textarea>` element with a `name` attribute.
///
/// ```swift
/// Textarea(name: "message") { "Default text" }
/// ```
/// ```html
/// <textarea name="message">Default text</textarea>
/// ```
///
/// - Parameters:
///   - name: The textarea name for form submission.
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: A `<textarea>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea)
public func Textarea(name: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("textarea", [.init("name", .string(name))] + attributes, [content()])
}

/// Creates a `<textarea>` element with `name` and `placeholder` attributes.
///
/// ```swift
/// Textarea(name: "message", placeholder: "Write your message...")
/// ```
/// ```html
/// <textarea name="message" placeholder="Write your message..."></textarea>
/// ```
///
/// - Parameters:
///   - name: The textarea name for form submission.
///   - placeholder: Hint text displayed when the textarea is empty.
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: A `<textarea>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea)
public func Textarea(name: String, placeholder: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("textarea", [.init("name", .string(name)), .init("placeholder", .string(placeholder))] + attributes, [content()])
}
