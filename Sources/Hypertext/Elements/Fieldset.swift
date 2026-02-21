/// Creates a `<fieldset>` element.
///
/// ```swift
/// Fieldset {
///     Legend { "Personal Info" }
///     Input(type: "text", name: "name")
/// }
/// ```
/// ```html
/// <fieldset><legend>Personal Info</legend><input type="text" name="name"></fieldset>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<fieldset>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/fieldset)
public func Fieldset(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("fieldset", attributes, [content()])
}
