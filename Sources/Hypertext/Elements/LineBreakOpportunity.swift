/// Creates a `<wbr>` void element.
///
/// ```swift
/// P { "super"; Wbr(); "califragilistic" }
/// ```
/// ```html
/// <p>super<wbr>califragilistic</p>
/// ```
///
/// - Parameter attributes: The element's attributes.
/// - Returns: A `<wbr>` void element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/wbr)
public func Wbr(_ attributes: Attribute...) -> Node {
    .voidElement("wbr", attributes)
}
