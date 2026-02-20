// MARK: - Document

public func Doctype() -> Node { .doctype }
public func Html(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("html", a, [content()]) }
public func Head(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("head", a, [content()]) }
public func Body(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("body", a, [content()]) }

// MARK: - Metadata

public func Title(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("title", a, [content()]) }
public func Meta(_ a: Attributes = [:]) -> Node { .voidElement("meta", a) }
public func Link(_ a: Attributes = [:]) -> Node { .voidElement("link", a) }
public func Style(_ a: Attributes = [:], content: () -> String) -> Node { .element("style", a, [.rawHTML(content())]) }
public func Script(_ a: Attributes = [:]) -> Node { .element("script", a, []) }
public func Script(_ a: Attributes = [:], content: () -> String) -> Node { .element("script", a, [.rawHTML(content())]) }

// MARK: - Sections

public func Header(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("header", a, [content()]) }

public func Footer(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("footer", a, [content()]) }
public func Nav(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("nav", a, [content()]) }
public func Main(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("main", a, [content()]) }
public func Section(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("section", a, [content()]) }
public func Article(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("article", a, [content()]) }
public func Aside(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("aside", a, [content()]) }

// MARK: - Headings

public func H1(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("h1", a, [content()]) }
public func H2(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("h2", a, [content()]) }
public func H3(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("h3", a, [content()]) }
public func H4(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("h4", a, [content()]) }
public func H5(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("h5", a, [content()]) }
public func H6(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("h6", a, [content()]) }

// MARK: - Block content

public func Div(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("div", a, [content()]) }
public func P(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("p", a, [content()]) }
public func Blockquote(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("blockquote", a, [content()]) }
public func Pre(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("pre", a, [content()]) }
public func Hr(_ a: Attributes = [:]) -> Node { .voidElement("hr", a) }

// MARK: - Inline content

public func Span(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("span", a, [content()]) }
public func A(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("a", a, [content()]) }
public func Strong(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("strong", a, [content()]) }
public func Em(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("em", a, [content()]) }
public func Code(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("code", a, [content()]) }
public func Br(_ a: Attributes = [:]) -> Node { .voidElement("br", a) }
public func Img(_ a: Attributes = [:]) -> Node { .voidElement("img", a) }

// MARK: - Lists

public func Ul(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("ul", a, [content()]) }
public func Ol(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("ol", a, [content()]) }
public func Li(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("li", a, [content()]) }

// MARK: - Tables

public func Table(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("table", a, [content()]) }
public func Thead(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("thead", a, [content()]) }
public func Tbody(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("tbody", a, [content()]) }
public func Tr(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("tr", a, [content()]) }
public func Th(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("th", a, [content()]) }
public func Td(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("td", a, [content()]) }

// MARK: - Forms

public func Form(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("form", a, [content()]) }
public func Input(_ a: Attributes = [:]) -> Node { .voidElement("input", a) }
public func Button(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("button", a, [content()]) }
public func Label(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("label", a, [content()]) }
public func Textarea(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("textarea", a, [content()]) }
public func Select(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("select", a, [content()]) }
public func Option(_ a: Attributes = [:], @HTMLBuilder content: () -> Node) -> Node { .element("option", a, [content()]) }
