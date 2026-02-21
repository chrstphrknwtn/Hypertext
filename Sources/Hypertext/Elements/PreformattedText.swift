/// Creates a `<pre>` element.
///
/// ```swift
/// Pre { "fn main() {\n    println!(\"hello\");\n}" }
/// ```
/// ```html
/// <pre>fn main() {
///     println!("hello");
/// }</pre>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: A `<pre>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/pre)
public func Pre(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("pre", attributes, [content()])
}
