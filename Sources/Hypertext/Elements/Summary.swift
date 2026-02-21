// Summary.swift

/// Creates a `<summary>` element.
///
/// ```swift
/// Summary { "Click to expand" }
/// ```
/// ```html
/// <summary>Click to expand</summary>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<summary>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/summary)
public func Summary(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("summary", attributes, [content()])
}
