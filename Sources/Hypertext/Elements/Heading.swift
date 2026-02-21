/// Creates an `<h1>` element.
///
/// ```swift
/// H1 { "Page Title" }
/// ```
/// ```html
/// <h1>Page Title</h1>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<h1>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public func H1(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("h1", attributes, [content()])
}

/// Creates an `<h2>` element.
///
/// ```swift
/// H2 { "Section Title" }
/// ```
/// ```html
/// <h2>Section Title</h2>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<h2>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public func H2(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("h2", attributes, [content()])
}

/// Creates an `<h3>` element.
///
/// ```swift
/// H3 { "Subsection" }
/// ```
/// ```html
/// <h3>Subsection</h3>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<h3>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public func H3(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("h3", attributes, [content()])
}

/// Creates an `<h4>` element.
///
/// ```swift
/// H4 { "Detail" }
/// ```
/// ```html
/// <h4>Detail</h4>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<h4>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public func H4(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("h4", attributes, [content()])
}

/// Creates an `<h5>` element.
///
/// ```swift
/// H5 { "Minor heading" }
/// ```
/// ```html
/// <h5>Minor heading</h5>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<h5>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public func H5(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("h5", attributes, [content()])
}

/// Creates an `<h6>` element.
///
/// ```swift
/// H6 { "Smallest heading" }
/// ```
/// ```html
/// <h6>Smallest heading</h6>
/// ```
///
/// - Parameters:
///   - attributes: The element's attributes.
///   - content: The element's content.
/// - Returns: An `<h6>` element node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public func H6(_ attributes: Attribute..., @HTMLBuilder content: () -> Node) -> Node {
    .element("h6", attributes, [content()])
}
