/// Creates a `<th>` element.
///
/// ```swift
/// Th { "Name" }
/// ```
/// ```html
/// <th>Name</th>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<th>` element node.
///
/// - SeeAlso: ``Th(scope:_:content:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th)
public func Th(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("th", attributes, [content()])
}

/// Creates a `<th>` element with a `scope` attribute.
///
/// ```swift
/// Th(scope: "col") { "Name" }
/// ```
/// ```html
/// <th scope="col">Name</th>
/// ```
///
/// - Parameters:
///   - scope: The scope of the header cell (e.g. `"col"`, `"row"`).
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: A `<th>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th)
public func Th(scope: String, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("th", [.init("scope", .string(scope))] + attributes, [content()])
}
