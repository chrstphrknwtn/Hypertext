/// Creates a `<!-- comment -->` element.
///
/// ```swift
/// Comment("My comment")
/// ```
/// ```html
/// <!-- My comment -->
/// ```
///
/// - Parameters:
///   - text: The comment text.
/// - Returns: A `<!-- comment -->` node.
///
/// Note: Consecutive hyphens are spaced to avoid accidental closing of a comment.
/// Eg. `Comment("comment -->")` renders as `<!-- comment - -> -->`
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/API/Comment)
public func Comment(_ text: String) -> Node {
    .comment(text)
}
