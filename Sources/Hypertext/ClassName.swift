/// A class name value, either a static string or a conditional dictionary.
///
/// `ClassName` conforms to `ExpressibleByStringLiteral` and
/// `ExpressibleByDictionaryLiteral`, so both forms can be passed
/// directly to ``Attribute/class(_:)``:
///
/// ```swift
/// // Static class names
/// Div(.class("container", "main")) { "Hello" }
///
/// // Conditional class names
/// Div(.class(["active": isActive, "hidden": isHidden])) { "Hello" }
///
/// // Mixed
/// Div(.class("container", ["active": isActive])) { "Hello" }
/// ```
///
/// Conditional entries preserve source order.
public enum ClassName: Sendable, ExpressibleByStringLiteral, ExpressibleByDictionaryLiteral {
    case name(String)
    case conditionals([(String, Bool)])

    public init(stringLiteral value: String) {
        self = .name(value)
    }

    public init(dictionaryLiteral elements: (String, Bool)...) {
        self = .conditionals(elements)
    }
}
