
/// Creates a `<dialog>` element.
///
/// ```swift
/// Dialog(.open()) { P { "Hello!" } }
/// ```
/// ```html
/// <dialog open><p>Hello!</p></dialog>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<dialog>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dialog)
public func Dialog(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("dialog", attributes, [content()])
}

/// Creates a `<dialog>` element with an `open` attribute.
///
/// ```swift
/// Dialog(open: isOpen) { P { "Hello!" } }
/// ```
/// ```html
/// <dialog open><p>Hello!</p></dialog>
/// ```
///
/// - Parameters:
///   - open: Whether the dialog is active and available for interaction.
///   - attributes: Additional attributes.
///   - content: The element's content.
/// - Returns: A `<dialog>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dialog)
public func Dialog(open: Bool, _ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("dialog", [.init("open", .bool(open))] + attributes, [content()])
}
