/// A type that represents a complete HTML page.
///
/// Conform to `HTMLPage` to create full documents. The doctype and
/// `<meta charset="utf-8">` are included automatically. Only ``body``
/// is required — ``head`` defaults to empty.
///
/// ```swift
/// struct HomePage: HTMLPage {
///     var head: Node {
///         Title { "My webpage!" }
///         Link(rel: "stylesheet", href: "/styles.css")
///     }
///
///     var body: Node {
///         H1 { "Welcome!" }
///     }
/// }
/// ```
///
/// - SeeAlso: ``HTMLComponent``
public protocol HTMLPage: HTMLComponent {
    @HTMLBuilder var head: Node { get }
    @HTMLBuilder var body: Node { get }
}

public extension HTMLPage {
    var head: Node { .empty }

    @HTMLBuilder var content: Node {
        Doctype()
        Html {
            Head {
                Meta(charset: "utf-8")
                head
            }
            Body {
                body
            }
        }
    }
}
