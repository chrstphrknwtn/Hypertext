/// Creates an `<option>` element.
///
/// ```swift
/// Option { "Choose..." }
/// ```
/// ```html
/// <option>Choose...</option>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<option>` element node.
///
/// - SeeAlso: ``Option(value:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/option)
public func Option(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("option", attributes, [content()])
}

/// Creates an `<option>` element with a `value` attribute.
///
/// ```swift
/// Option(value: "au") { "Australia" }
/// ```
/// ```html
/// <option value="au">Australia</option>
/// ```
///
/// - Parameters:
///   - value: The value submitted with the form.
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: An `<option>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/option)
public func Option(value: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("option", [.init("value", .string(value))] + attributes, [content()])
}

/// Creates an `<option>` element with `value` and `selected` attributes.
///
/// ```swift
/// Option(value: "au", selected: true) { "Australia" }
/// ```
/// ```html
/// <option value="au" selected>Australia</option>
/// ```
///
/// - Parameters:
///   - value: The value submitted with the form.
///   - selected: Whether this option is selected by default.
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: An `<option>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/option)
public func Option(value: String, selected: Bool, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("option", [.init("value", .string(value)), .init("selected", .bool(selected))] + attributes, [content()])
}

/// Creates an `<input>` void element with `type`, `name`, `placeholder`, and `required` attributes.
///
/// ```swift
/// Input(type: "email", name: "email", placeholder: "you@example.com", required: true)
/// ```
/// ```html
/// <input type="email" name="email" placeholder="you@example.com" required>
/// ```
///
/// - Parameters:
///   - type: The input type.
///   - name: The input name for form submission.
///   - placeholder: Hint text displayed when the input is empty.
///   - required: Whether the input must be filled before submission.
///   - attributes: Additional attributes.
/// - Returns: An `<input>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)
public func Input(type: String, name: String, placeholder: String, required: Bool, _ attributes: Attribute...) -> Node {
    .voidElement("input", [.init("type", .string(type)), .init("name", .string(name)), .init("placeholder", .string(placeholder)), .init("required", .bool(required))] + attributes)
}

/// Creates an `<input>` void element with `type`, `name`, `value`, and `required` attributes.
///
/// ```swift
/// Input(type: "text", name: "username", value: "chris", required: true)
/// ```
/// ```html
/// <input type="text" name="username" value="chris" required>
/// ```
///
/// - Parameters:
///   - type: The input type.
///   - name: The input name for form submission.
///   - value: The input's value.
///   - required: Whether the input must be filled before submission.
///   - attributes: Additional attributes.
/// - Returns: An `<input>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)
public func Input(type: String, name: String, value: String, required: Bool, _ attributes: Attribute...) -> Node {
    .voidElement("input", [.init("type", .string(type)), .init("name", .string(name)), .init("value", .string(value)), .init("required", .bool(required))] + attributes)
}
