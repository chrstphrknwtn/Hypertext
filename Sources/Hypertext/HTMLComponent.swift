/// A type that represents reusable HTML content.
///
/// Conform to `HTMLComponent` to create composable building blocks
/// for your HTML. Use ``HTMLPage`` for full page documents.
///
/// ```swift
/// struct NavBar: HTMLComponent {
///     var content: Node {
///         Nav {
///             A(href: "/") { "Home" }
///             A(href: "/about") { "About" }
///         }
///     }
/// }
/// ```
///
/// Components can be nested inside other components or used
/// directly within an ``HTMLBuilder`` closure.
///
/// - SeeAlso: ``HTMLPage``
public protocol HTMLComponent {
    @HTMLBuilder var content: Node { get }
}

public extension HTMLComponent {
    func render(_ options: RenderOptions = RenderOptions()) -> String {
        content.render(options)
    }
}
