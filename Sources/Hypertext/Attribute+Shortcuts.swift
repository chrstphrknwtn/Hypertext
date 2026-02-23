/// Shortcut static methods for creating common HTML attributes.
///
/// Instead of constructing attributes with the initialiser:
///
/// ```swift
/// Div(.init("class", .string("container")), .init("id", .string("main"))) {
///     "Hello"
/// }
/// ```
///
/// Use the dot-syntax shortcuts:
///
/// ```swift
/// Div(.class("container"), .id("main")) {
///     "Hello"
/// }
/// ```
///
/// Boolean attributes accept an optional `Bool` parameter for conditional rendering:
///
/// ```swift
/// Input(.type("email"), .name("email"), .required(isRequired))
/// ```
///
/// When `true`, the attribute renders as a name-only attribute (e.g. `required`).
/// When `false`, the attribute is omitted from the output entirely.
///
/// For attributes without a shortcut, use the ``Attribute`` initialiser directly.
public extension Attribute {
    // MARK: - Global attributes

    // Class attribute accepts any number of strings or dictionary literal
    // conditional classes.
    static func `class`(_ values: ClassName...) -> Attribute {
        let classes = values.flatMap { value -> [String] in
            switch value {
            case let .name(name): [name]
            case let .conditionals(pairs): pairs
                .filter { _, condition in condition }
                .map { name, _ in name }
            }
        }

        return .init("class", .string(classes.joined(separator: " ")))
    }

    static func id(_ value: String) -> Attribute {
        .init("id", .string(value))
    }

    static func style(_ value: String) -> Attribute {
        .init("style", .string(value))
    }

    static func title(_ value: String) -> Attribute {
        .init("title", .string(value))
    }

    static func lang(_ value: String) -> Attribute {
        .init("lang", .string(value))
    }

    static func dir(_ value: String) -> Attribute {
        .init("dir", .string(value))
    }

    static func role(_ value: String) -> Attribute {
        .init("role", .string(value))
    }

    static func tabindex(_ value: Int) -> Attribute {
        .init("tabindex", .int(value))
    }

    static func hidden(_ value: Bool = true) -> Attribute {
        .init("hidden", .bool(value))
    }

    static func draggable(_ value: String) -> Attribute {
        .init("draggable", .string(value))
    }

    static func contenteditable(_ value: String) -> Attribute {
        .init("contenteditable", .string(value))
    }

    static func spellcheck(_ value: String) -> Attribute {
        .init("spellcheck", .string(value))
    }

    static func translate(_ value: String) -> Attribute {
        .init("translate", .string(value))
    }

    static func min(_ value: Int) -> Attribute {
        .init("min", .int(value))
    }

    static func max(_ value: Int) -> Attribute {
        .init("max", .int(value))
    }

    // MARK: - Data & ARIA

    static func data(_ key: String, _ value: String) -> Attribute {
        .init("data-\(key)", .string(value))
    }

    static func aria(_ key: String, _ value: String) -> Attribute {
        .init("aria-\(key)", .string(value))
    }

    // MARK: - Links & navigation

    static func href(_ value: String) -> Attribute {
        .init("href", .string(value))
    }

    static func src(_ value: String) -> Attribute {
        .init("src", .string(value))
    }

    static func srcset(_ value: String) -> Attribute {
        .init("srcset", .string(value))
    }

    static func alt(_ value: String) -> Attribute {
        .init("alt", .string(value))
    }

    static func target(_ value: String) -> Attribute {
        .init("target", .string(value))
    }

    static func rel(_ value: String) -> Attribute {
        .init("rel", .string(value))
    }

    static func download(_ value: String = "") -> Attribute {
        value.isEmpty ? .init("download", .bool(true)) : .init("download", .string(value))
    }

    static func hreflang(_ value: String) -> Attribute {
        .init("hreflang", .string(value))
    }

    static func ping(_ value: String) -> Attribute {
        .init("ping", .string(value))
    }

    static func referrerpolicy(_ value: String) -> Attribute {
        .init("referrerpolicy", .string(value))
    }

    // MARK: - Form attributes

    static func type(_ value: String) -> Attribute {
        .init("type", .string(value))
    }

    static func name(_ value: String) -> Attribute {
        .init("name", .string(value))
    }

    static func value(_ value: String) -> Attribute {
        .init("value", .string(value))
    }

    static func value(_ value: Int) -> Attribute {
        .init("value", .int(value))
    }

    static func placeholder(_ value: String) -> Attribute {
        .init("placeholder", .string(value))
    }

    static func action(_ value: String) -> Attribute {
        .init("action", .string(value))
    }

    static func method(_ value: String) -> Attribute {
        .init("method", .string(value))
    }

    static func `for`(_ value: String) -> Attribute {
        .init("for", .string(value))
    }

    static func enctype(_ value: String) -> Attribute {
        .init("enctype", .string(value))
    }

    static func pattern(_ value: String) -> Attribute {
        .init("pattern", .string(value))
    }

    static func min(_ value: String) -> Attribute {
        .init("min", .string(value))
    }

    static func max(_ value: String) -> Attribute {
        .init("max", .string(value))
    }

    static func step(_ value: String) -> Attribute {
        .init("step", .string(value))
    }

    static func maxlength(_ value: Int) -> Attribute {
        .init("maxlength", .int(value))
    }

    static func minlength(_ value: Int) -> Attribute {
        .init("minlength", .int(value))
    }

    static func rows(_ value: Int) -> Attribute {
        .init("rows", .int(value))
    }

    static func cols(_ value: Int) -> Attribute {
        .init("cols", .int(value))
    }

    static func accept(_ value: String) -> Attribute {
        .init("accept", .string(value))
    }

    static func autocomplete(_ value: String) -> Attribute {
        .init("autocomplete", .string(value))
    }

    static func list(_ value: String) -> Attribute {
        .init("list", .string(value))
    }

    static func form(_ value: String) -> Attribute {
        .init("form", .string(value))
    }

    static func formaction(_ value: String) -> Attribute {
        .init("formaction", .string(value))
    }

    static func formmethod(_ value: String) -> Attribute {
        .init("formmethod", .string(value))
    }

    static func formenctype(_ value: String) -> Attribute {
        .init("formenctype", .string(value))
    }

    static func wrap(_ value: String) -> Attribute {
        .init("wrap", .string(value))
    }

    static func inputmode(_ value: String) -> Attribute {
        .init("inputmode", .string(value))
    }

    static func disabled(_ value: Bool = true) -> Attribute {
        .init("disabled", .bool(value))
    }

    static func required(_ value: Bool = true) -> Attribute {
        .init("required", .bool(value))
    }

    static func checked(_ value: Bool = true) -> Attribute {
        .init("checked", .bool(value))
    }

    static func readonly(_ value: Bool = true) -> Attribute {
        .init("readonly", .bool(value))
    }

    static func autofocus(_ value: Bool = true) -> Attribute {
        .init("autofocus", .bool(value))
    }

    static func multiple(_ value: Bool = true) -> Attribute {
        .init("multiple", .bool(value))
    }

    static func selected(_ value: Bool = true) -> Attribute {
        .init("selected", .bool(value))
    }

    static func novalidate(_ value: Bool = true) -> Attribute {
        .init("novalidate", .bool(value))
    }

    static func formnovalidate(_ value: Bool = true) -> Attribute {
        .init("formnovalidate", .bool(value))
    }

    // MARK: - Media & dimensions

    static func width(_ value: Int) -> Attribute {
        .init("width", .int(value))
    }

    static func height(_ value: Int) -> Attribute {
        .init("height", .int(value))
    }

    static func loading(_ value: String) -> Attribute {
        .init("loading", .string(value))
    }

    static func decoding(_ value: String) -> Attribute {
        .init("decoding", .string(value))
    }

    static func poster(_ value: String) -> Attribute {
        .init("poster", .string(value))
    }

    static func preload(_ value: String) -> Attribute {
        .init("preload", .string(value))
    }

    static func autoplay(_ value: Bool = true) -> Attribute {
        .init("autoplay", .bool(value))
    }

    static func controls(_ value: Bool = true) -> Attribute {
        .init("controls", .bool(value))
    }

    static func loop(_ value: Bool = true) -> Attribute {
        .init("loop", .bool(value))
    }

    static func muted(_ value: Bool = true) -> Attribute {
        .init("muted", .bool(value))
    }

    static func playsinline(_ value: Bool = true) -> Attribute {
        .init("playsinline", .bool(value))
    }

    // MARK: - Image maps

    static func usemap(_ value: String) -> Attribute {
        .init("usemap", .string(value))
    }

    static func coords(_ value: String) -> Attribute {
        .init("coords", .string(value))
    }

    static func shape(_ value: String) -> Attribute {
        .init("shape", .string(value))
    }

    // MARK: - Iframe & embedding

    static func sandbox(_ value: String) -> Attribute {
        .init("sandbox", .string(value))
    }

    static func allow(_ value: String) -> Attribute {
        .init("allow", .string(value))
    }

    static func allowfullscreen(_ value: Bool = true) -> Attribute {
        .init("allowfullscreen", .bool(value))
    }

    static func srcdoc(_ value: String) -> Attribute {
        .init("srcdoc", .string(value))
    }

    // MARK: - Meta & link

    static func charset(_ value: String) -> Attribute {
        .init("charset", .string(value))
    }

    static func content(_ value: String) -> Attribute {
        .init("content", .string(value))
    }

    static func httpEquiv(_ value: String) -> Attribute {
        .init("http-equiv", .string(value))
    }

    static func media(_ value: String) -> Attribute {
        .init("media", .string(value))
    }

    static func sizes(_ value: String) -> Attribute {
        .init("sizes", .string(value))
    }

    static func crossorigin(_ value: String) -> Attribute {
        .init("crossorigin", .string(value))
    }

    static func integrity(_ value: String) -> Attribute {
        .init("integrity", .string(value))
    }

    static func `as`(_ value: String) -> Attribute {
        .init("as", .string(value))
    }

    static func fetchpriority(_ value: String) -> Attribute {
        .init("fetchpriority", .string(value))
    }

    // MARK: - Script

    static func async(_ value: Bool = true) -> Attribute {
        .init("async", .bool(value))
    }

    static func `defer`(_ value: Bool = true) -> Attribute {
        .init("defer", .bool(value))
    }

    static func nonce(_ value: String) -> Attribute {
        .init("nonce", .string(value))
    }

    static func nomodule(_ value: Bool = true) -> Attribute {
        .init("nomodule", .bool(value))
    }

    // MARK: - Table

    static func colspan(_ value: Int) -> Attribute {
        .init("colspan", .int(value))
    }

    static func rowspan(_ value: Int) -> Attribute {
        .init("rowspan", .int(value))
    }

    static func scope(_ value: String) -> Attribute {
        .init("scope", .string(value))
    }

    static func span(_ value: Int) -> Attribute {
        .init("span", .int(value))
    }

    // MARK: - Time & text semantics

    static func datetime(_ value: String) -> Attribute {
        .init("datetime", .string(value))
    }

    static func cite(_ value: String) -> Attribute {
        .init("cite", .string(value))
    }

    // MARK: - Interactive

    static func open(_ value: Bool = true) -> Attribute {
        .init("open", .bool(value))
    }

    static func label(_ value: String) -> Attribute {
        .init("label", .string(value))
    }
}
