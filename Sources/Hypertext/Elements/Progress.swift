/// Creates a `<progress>` element.
///
/// ```swift
/// Progress(.init("value", .int(70)), .init("max", .int(100))) { "70%" }
/// ```
/// ```html
/// <progress value="70" max="100">70%</progress>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: Fallback content.
/// - Returns: A `<progress>` element node.
///
/// - SeeAlso: ``Progress(value:max:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/progress)
public func Progress(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("progress", attributes, [content()])
}

/// Creates a `<progress>` element with `value` and `max` attributes.
///
/// ```swift
/// Progress(value: 70, max: 100) { "70%" }
/// ```
/// ```html
/// <progress value="70" max="100">70%</progress>
/// ```
///
/// - Parameters:
///   - value: The current value.
///   - max: The maximum value.
///   - attributes: Additional attributes.
///   - content: Fallback content.
/// - Returns: A `<progress>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/progress)
public func Progress(value: Double, max: Double, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("progress", [.init("value", .string(String(value))), .init("max", .string(String(max)))] + attributes, [content()])
}
