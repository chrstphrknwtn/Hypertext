/// Creates a `<meter>` element.
///
/// ```swift
/// Meter(.init("value", .int(75)), .init("min", .int(0)), .init("max", .int(100))) { "75%" }
/// ```
/// ```html
/// <meter value="75" min="0" max="100">75%</meter>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: Fallback content.
/// - Returns: A `<meter>` element node.
///
/// - SeeAlso: ``Meter(value:min:max:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter)
public func Meter(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("meter", attributes, [content()])
}

/// Creates a `<meter>` element with `value`, `min`, and `max` attributes.
///
/// ```swift
/// Meter(value: 75, min: 0, max: 100) { "75%" }
/// ```
/// ```html
/// <meter value="75" min="0" max="100">75%</meter>
/// ```
///
/// - Parameters:
///   - value: The current value.
///   - min: The minimum value.
///   - max: The maximum value.
///   - attributes: Additional attributes.
///   - content: Fallback content.
/// - Returns: A `<meter>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter)
public func Meter(value: Double, min: Double, max: Double, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("meter", [.init("value", .string(String(value))), .init("min", .string(String(min))), .init("max", .string(String(max)))] + attributes, [content()])
}
