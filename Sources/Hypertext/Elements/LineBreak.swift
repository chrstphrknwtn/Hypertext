/// Creates a `<br>` void element.
///
/// ```swift
/// Br()
/// ```
/// ```html
/// <br>
/// ```
///
/// - Parameter attributes: The element's attributes.
/// - Returns: A `<br>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/br)
public func Br(_ attributes: Attribute...) -> Node {
    .voidElement("br", attributes)
}
