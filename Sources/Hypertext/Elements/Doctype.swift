/// Creates an HTML5 document type declaration.
///
/// ```swift
/// Doctype()
/// ```
/// Output:
/// ```html
/// <!DOCTYPE html>
/// ```
///
/// - Returns: A doctype node.
///
/// [MDN Reference](https://developer.mozilla.org/en-US/docs/Glossary/Doctype)
public func Doctype() -> Node { .doctype }
