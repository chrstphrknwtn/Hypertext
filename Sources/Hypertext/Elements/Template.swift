/// Creates a `<template>` element.
///
/// ```swift
/// Template(.init("id", .string("row-template"))) {
///     Tr { Td { "Placeholder" } }
/// }
/// ```
/// ```html
/// <template id="row-template"><tr><td>Placeholder</td></tr></template>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<template>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template)
public func Template(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("template", attributes, [content()])
}
