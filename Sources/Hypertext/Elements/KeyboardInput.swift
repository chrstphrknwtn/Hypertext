/// Creates a `<kbd>` element.
///
/// ```swift
/// P { "Press "; Kbd { "Ctrl" }; "+"; Kbd { "C" }; " to copy." }
/// ```
/// ```html
/// <p>Press <kbd>Ctrl</kbd>+<kbd>C</kbd> to copy.</p>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<kbd>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/kbd)
public func Kbd(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("kbd", attributes, [content()])
}
