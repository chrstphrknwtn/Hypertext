/// Creates an empty `<script>` element.
///
/// ```swift
/// Script(.init("src", .string("/app.js")))
/// ```
/// ```html
/// <script src="/app.js"></script>
/// ```
///
/// - Parameter attributes: The element's attributes.
/// - Returns: A `<script>` element node.
///
/// - SeeAlso: ``Script(src:_:)``
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script)
public func Script(_ attributes: Attribute...) -> Node {
    .element("script", attributes, [])
}

/// Creates a `<script>` element with a `src` attribute.
///
/// ```swift
/// Script(src: "/app.js")
/// ```
/// ```html
/// <script src="/app.js"></script>
/// ```
///
/// - Parameters:
///   - src: The URL of the script.
///   - attributes: Additional attributes.
/// - Returns: A `<script>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script)
public func Script(src: String, _ attributes: Attribute...) -> Node {
    .element("script", [.init("src", .string(src))] + attributes, [])
}

/// Creates a `<script>` element with inline content.
///
/// ```swift
/// Script { "console.log('hello')" }
/// ```
/// ```html
/// <script>console.log('hello')</script>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: A closure returning JavaScript as a string.
/// - Returns: A `<script>` element node.
///
/// - Warning: Content is not escaped. Never pass untrusted
///   user input to this closure.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script)
public func Script(_ attributes: Attribute..., content: () -> String) -> Node {
    .element("script", attributes, [.rawText(content())])
}
