/// Creates a `<title>` element.
///
/// ```swift
/// Title("My Website")
/// ```
/// ```html
/// <title>My Website</title>
/// ```
///
/// - Parameter text: The document title.
/// - Returns: A `<title>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/title)
public func Title(_ text: String) -> Node {
    .element("title", [], [.text(text)])
}
