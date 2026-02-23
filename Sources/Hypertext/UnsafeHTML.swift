/// Inserts a raw HTML string without escaping.
///
/// ```swift
/// Div {
///     UnsafeHTML("<svg xmlns='http://www.w3.org/2000/svg'>...</svg>")
/// }
/// ```
/// ```html
/// <div><svg xmlns='http://www.w3.org/2000/svg'>...</svg></div>
/// ```
///
/// - Warning: Content is not escaped. Never pass untrusted user input.
///
/// - Parameter content: A raw HTML string.
/// - Returns: A raw HTML node.
public func UnsafeHTML(_ content: String) -> Node {
    .rawHTML(content)
}
