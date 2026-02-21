/// Creates a `<style>` element.
///
/// ```swift
/// Style { "body { margin: 0; }" }
/// ```
/// ```html
/// <style>body { margin: 0; }</style>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: A closure returning CSS as a string.
/// - Returns: A `<style>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style)
public func Style(_ attributes: Attribute..., content: () -> String) -> Node {
    .element("style", attributes, [.rawText(content())])
}
