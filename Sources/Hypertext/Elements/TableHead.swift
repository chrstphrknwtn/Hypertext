/// Creates a `<thead>` element.
///
/// ```swift
/// Thead { Tr { Th { "Name" } } }
/// ```
/// ```html
/// <thead><tr><th>Name</th></tr></thead>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<thead>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/thead)
public func Thead(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("thead", attributes, [content()])
}
