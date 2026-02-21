/// Creates an `<hr>` void element.
///
/// ```swift
/// Hr()
/// ```
/// ```html
/// <hr>
/// ```
///
/// - Parameter attributes: The element's attributes.
/// - Returns: An `<hr>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/hr)
public func Hr(_ attributes: Attribute...) -> Node {
    .voidElement("hr", attributes)
}
