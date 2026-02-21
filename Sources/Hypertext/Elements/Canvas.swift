/// Creates a `<canvas>` element.
///
/// ```swift
/// Canvas(.width(300), .height(150)) { "Canvas not supported." }
/// ```
/// ```html
/// <canvas width="300" height="150">Canvas not supported.</canvas>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: Fallback content.
/// - Returns: A `<canvas>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas)
public func Canvas(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("canvas", attributes, [content()])
}
