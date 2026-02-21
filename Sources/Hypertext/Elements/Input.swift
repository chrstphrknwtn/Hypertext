/// Creates an `<input>` void element.
///
/// ```swift
/// Input(.init("type", .string("email")), .init("name", .string("email")))
/// ```
/// ```html
/// <input type="email" name="email">
/// ```
///
/// - Parameter attributes: The element's attributes.
/// - Returns: An `<input>` void element node.
///
/// - SeeAlso: ``Input(type:name:_:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)
public func Input(_ attributes: Attribute...) -> Node {
    .voidElement("input", attributes)
}

/// Creates an `<input>` void element with `type` and `name` attributes.
///
/// ```swift
/// Input(type: "email", name: "email")
/// ```
/// ```html
/// <input type="email" name="email">
/// ```
///
/// - Parameters:
///   - type: The input type (e.g. `"text"`, `"email"`, `"password"`, `"hidden"`).
///   - name: The input name for form submission.
///   - attributes: Additional attributes.
/// - Returns: An `<input>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)
public func Input(type: String, name: String, _ attributes: Attribute...) -> Node {
    .voidElement("input", [.init("type", .string(type)), .init("name", .string(name))] + attributes)
}

/// Creates an `<input>` void element with `type`, `name`, and `value` attributes.
///
/// ```swift
/// Input(type: "hidden", name: "csrf", value: "abc123")
/// ```
/// ```html
/// <input type="hidden" name="csrf" value="abc123">
/// ```
///
/// - Parameters:
///   - type: The input type.
///   - name: The input name for form submission.
///   - value: The input's value.
///   - attributes: Additional attributes.
/// - Returns: An `<input>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)
public func Input(type: String, name: String, value: String, _ attributes: Attribute...) -> Node {
    .voidElement("input", [.init("type", .string(type)), .init("name", .string(name)), .init("value", .string(value))] + attributes)
}

/// Creates an `<input>` void element with `type`, `name`, and `placeholder` attributes.
///
/// ```swift
/// Input(type: "email", name: "email", placeholder: "you@example.com")
/// ```
/// ```html
/// <input type="email" name="email" placeholder="you@example.com">
/// ```
///
/// - Parameters:
///   - type: The input type.
///   - name: The input name for form submission.
///   - placeholder: Hint text displayed when the input is empty.
///   - attributes: Additional attributes.
/// - Returns: An `<input>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)
public func Input(type: String, name: String, placeholder: String, _ attributes: Attribute...) -> Node {
    .voidElement("input", [.init("type", .string(type)), .init("name", .string(name)), .init("placeholder", .string(placeholder))] + attributes)
}

/// Creates an `<input>` void element with `type`, `name`, and `required` attributes.
///
/// ```swift
/// Input(type: "email", name: "email", required: true)
/// ```
/// ```html
/// <input type="email" name="email" required>
/// ```
///
/// - Parameters:
///   - type: The input type (e.g. `"text"`, `"email"`, `"password"`).
///   - name: The input name for form submission.
///   - required: Whether the input must be filled before submission.
///   - attributes: Additional attributes.
/// - Returns: An `<input>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)
public func Input(type: String, name: String, required: Bool, _ attributes: Attribute...) -> Node {
    .voidElement("input", [.init("type", .string(type)), .init("name", .string(name)), .init("required", .bool(required))] + attributes)
}
