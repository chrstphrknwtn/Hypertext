@testable import Hypertext
import Testing

let html = HTMLRenderer()
let xml = HTMLRenderer(.xml)

enum NodeTests {
    @Suite("Text Nodes")
    struct TextNodes {
        @Test("Renders plain text")
        func rendersPlainText() {
            let node = Node.text("hello")
            #expect(html.render(node) == "hello")
        }

        @Test("Escapes ampersands")
        func escapesAmpersands() {
            let node = Node.text("rock & roll")
            #expect(html.render(node) == "rock &amp; roll")
        }

        @Test("Escapes angle brackets")
        func escapesAngleBrackets() {
            let node = Node.text("<script>alert('xss')</script>")
            #expect(html.render(node) == "&lt;script&gt;alert(&#39;xss&#39;)&lt;/script&gt;")
        }

        @Test("Escapes double quotes")
        func escapesDoubleQuotes() {
            let node = Node.text("say \"hello\"")
            #expect(html.render(node) == "say &quot;hello&quot;")
        }

        @Test("Escapes all special characters together")
        func escapesAllSpecialCharacters() {
            let node = Node.text("<a href=\"test&foo\">")
            #expect(html.render(node) == "&lt;a href=&quot;test&amp;foo&quot;&gt;")
        }
    }

    @Suite("Raw HTML")
    struct rawHTML {
        @Test("Renders without escaping")
        func rendersWithoutEscaping() {
            let node = Node.rawHTML("<strong>bold</strong>")
            #expect(html.render(node) == "<strong>bold</strong>")
        }

        @Test("Preserves special characters")
        func preservesSpecialCharacters() {
            let node = Node.rawHTML("<a href=\"test&foo\">link</a>")
            #expect(html.render(node) == "<a href=\"test&foo\">link</a>")
        }
    }

    @Suite("Elements")
    struct Elements {
        @Test("Renders with tag and content")
        func rendersBasic() {
            let node = Node.element("div", [], [.text("content")])
            #expect(html.render(node) == "<div>content</div>")
        }

        @Test("Renders with attributes")
        func rendersWithAttributes() {
            let node = Node.element("div", [.class("active")], [.text("content")])
            #expect(html.render(node) == "<div class=\"active\">content</div>")
        }

        @Test("Renders nested elements")
        func rendersNested() {
            let node = Node.element("div", [], [
                .element("p", [], [.text("first")]),
                .element("p", [], [.text("second")]),
            ])
            #expect(html.render(node) == "<div><p>first</p><p>second</p></div>")
        }

        @Test("Renders empty element")
        func rendersEmpty() {
            let node = Node.element("div", [], [])
            #expect(html.render(node) == "<div></div>")
        }
    }

    @Suite("Void Elements")
    struct VoidElements {
        @Test("Renders without closing tag")
        func rendersWithoutClosingTag() {
            let node = Node.voidElement("br", [])
            #expect(html.render(node) == "<br>")
        }

        @Test("Renders with attributes")
        func rendersWithAttributes() {
            let node = Node.voidElement("meta", [.init("charset", "utf-8")])
            #expect(html.render(node) == "<meta charset=\"utf-8\">")
        }

        @Test("Renders self-closing in XML mode")
        func rendersSelfClosingXML() {
            let node = Node.voidElement("br", [])
            #expect(xml.render(node) == "<br />")
        }
    }

    @Suite("Render Attributes")
    struct Attributes {
        @Test("String attribute renders as key-value")
        func stringAttribute() {
            let node = Node.element("div", [.class("active")], [])
            #expect(html.render(node) == "<div class=\"active\"></div>")
        }

        @Test("Integer attribute renders as key-value")
        func integerAttribute() {
            let node = Node.element("input", [.init("tabindex", 1)], [])
            #expect(html.render(node) == "<input tabindex=\"1\"></input>")
        }

        @Test("Boolean true renders as name only")
        func booleanTrue() {
            let node = Node.element("input", [.init("disabled", true)], [])
            #expect(html.render(node) == "<input disabled></input>")
        }

        @Test("Boolean false omits attribute")
        func booleanFalse() {
            let node = Node.element("input", [.init("disabled", false)], [])
            #expect(html.render(node) == "<input></input>")
        }

        @Test("Attribute values are escaped")
        func attributeValuesEscaped() {
            let node = Node.element("div", [.init("data-value", "a&b\"c")], [])
            #expect(html.render(node) == "<div data-value=\"a&amp;b&quot;c\"></div>")
        }

        @Test("Attribute order is preserved")
        func attributeOrderIsPreserved() {
            let node = Node.voidElement("input", [
                .init("type", "text"),
                .init("name", "email"),
                .class("form-input"),
                .init("placeholder", "Enter email"),
                .init("required", true)])
            #expect(html.render(node) == "<input type=\"text\" name=\"email\" class=\"form-input\" placeholder=\"Enter email\" required>")
        }
    }

    @Suite("Fragment & Empty")
    struct FragmentAndEmpty {
        @Test("Fragment renders all children")
        func fragmentRenders() {
            let node = Node.fragment([.text("one"), .text("two"), .text("three")])
            #expect(html.render(node) == "onetwothree")
        }

        @Test("Empty renders nothing")
        func emptyRenders() {
            let node = Node.empty
            #expect(html.render(node) == "")
        }

        @Test("Fragment with mixed node types")
        func fragmentMixed() {
            let node = Node.fragment([
                .element("p", [], [.text("hello")]),
                .text(" "),
                .element("p", [], [.text("world")]),
            ])
            #expect(html.render(node) == "<p>hello</p> <p>world</p>")
        }
    }

    @Suite("Class Merging")
    struct ClassMerging {
        @Test("Single class attribute unchanged")
        func singleClassUnchanged() {
            let node = Node.element("div", [.class("container")], [])
            #expect(html.render(node) == "<div class=\"container\"></div>")
        }

        @Test("No class attributes returns unchanged")
        func noClasses() {
            let node = Node.element("div", [.id("main"), .hidden()], [])
            #expect(html.render(node) == "<div id=\"main\" hidden></div>")
        }

        @Test("Multiple class attributes merge into one")
        func multipleClassesMerge() {
            let node = Node.element("div", [.class("card"), .class("highlighted")], [])
            #expect(html.render(node) == "<div class=\"card highlighted\"></div>")
        }

        @Test("Merged class preserves position of first")
        func mergePreservesPosition() {
            let node = Node.element("div", [.id("main"), .class("card"), .hidden(), .class("wide")], [])
            #expect(html.render(node) == "<div id=\"main\" class=\"card wide\" hidden></div>")
        }

        @Test("Other attribute order is preserved")
        func otherAttributeOrderPreserved() {
            let node = Node.element("div", [.id("a"), .class("x"), .data("foo", "bar"), .class("y"), .hidden()], [])
            #expect(html.render(node) == "<div id=\"a\" class=\"x y\" data-foo=\"bar\" hidden></div>")
        }

        @Test("Conditional class merging includes truthy values")
        func conditionalMerging() {
            let node = Node.element("div", [.class("card"), .class(["highlighted": true, "dimmed": false])], [])
            #expect(html.render(node) == "<div class=\"card highlighted\"></div>")
        }

        @Test("All-false conditional class is omitted from merge")
        func allFalseConditionalMerge() {
            let node = Node.element("div", [.class("card"), .class(["active": false])], [])
            #expect(html.render(node) == "<div class=\"card\"></div>")
        }

        @Test("All-false conditional as only class omits attribute")
        func allFalseOnlyClass() {
            let node = Node.element("div", [.id("main"), .class(["active": false])], [])
            #expect(html.render(node) == "<div id=\"main\"></div>")
        }
    }
}
