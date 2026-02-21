/// Creates a `<col>` void element.
///
/// ```swift
/// Col(.init("span", .int(2)))
/// ```
/// ```html
/// <col span="2">
/// ```
///
/// - Parameter attributes: The element's attributes.
/// - Returns: A `<col>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/col)
public func Col(_ attributes: Attribute...) -> Node {
    .voidElement("col", attributes)
}
