/// Creates a `<slot>` element.
///
/// ```swift
/// Slot(.init("name", .string("title"))) { "Default title" }
/// ```
/// ```html
/// <slot name="title">Default title</slot>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: Fallback content.
/// - Returns: A `<slot>` element node.
///
/// - SeeAlso: ``Slot(name:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/slot)
public func Slot(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("slot", attributes, [content()])
}

/// Creates a `<slot>` element with a `name` attribute.
///
/// ```swift
/// Slot(name: "title") { "Default title" }
/// ```
/// ```html
/// <slot name="title">Default title</slot>
/// ```
///
/// - Parameters:
///   - name: The slot name.
///   - attributes: Additional attributes.
///   - content: Fallback content.
/// - Returns: A `<slot>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/slot)
public func Slot(name: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("slot", [.init("name", .string(name))] + attributes, [content()])
}
