/// A type that represents a complete HTML page.
///
/// Conform to `HTMLPage` to create full documents with a `<!DOCTYPE html>`
/// declaration, `<head>`, and `<body>`. Only ``title`` and ``body`` are
/// required — ``head`` defaults to empty.
///
/// ```swift
/// struct HomePage: HTMLPage {
///     var title = "Home"
///
///     var head: Node {
///         Meta(charset: "utf-8")
///         Link(rel: "stylesheet", href: "/styles.css")
///     }
///
///     var body: Node {
///         H1 { "Welcome" }
///     }
/// }
/// ```
///
/// - SeeAlso: ``HTMLComponent``
public protocol HTMLPage: HTMLComponent {
    var title: String { get }
    @HTMLBuilder var head: Node { get }
    @HTMLBuilder var body: Node { get }
}

public extension HTMLPage {
    var head: Node { .empty }

    @HTMLBuilder var content: Node {
        Doctype()
        Html {
            Head {
                Title(title)
                head
            }
            Body {
                body
            }
        }
    }
}
