@testable import Hypertext
import Testing

enum NodeTests {
    @Suite("Text Nodes")
    struct TextNodes {
        @Test("Renders plain text")
        func rendersPlainText() {
            let node = Node.text("hello")
            #expect(node.render() == "hello")
        }

        @Test("Escapes ampersands")
        func escapesAmpersands() {
            let node = Node.text("rock & roll")
            #expect(node.render() == "rock &amp; roll")
        }

        @Test("Escapes angle brackets")
        func escapesAngleBrackets() {
            let node = Node.text("<script>alert('xss')</script>")
            #expect(node.render() == "&lt;script&gt;alert('xss')&lt;/script&gt;")
        }

        @Test("Escapes double quotes")
        func escapesDoubleQuotes() {
            let node = Node.text("say \"hello\"")
            #expect(node.render() == "say &quot;hello&quot;")
        }

        @Test("Escapes all special characters together")
        func escapesAllSpecialCharacters() {
            let node = Node.text("<a href=\"test&foo\">")
            #expect(node.render() == "&lt;a href=&quot;test&amp;foo&quot;&gt;")
        }
    }

    @Suite("Raw HTML")
    struct RawHTML {
        @Test("Renders without escaping")
        func rendersWithoutEscaping() {
            let node = Node.rawHTML("<strong>bold</strong>")
            #expect(node.render() == "<strong>bold</strong>")
        }

        @Test("Preserves special characters")
        func preservesSpecialCharacters() {
            let node = Node.rawHTML("<a href=\"test&foo\">link</a>")
            #expect(node.render() == "<a href=\"test&foo\">link</a>")
        }
    }

    @Suite("Elements")
    struct Elements {
        @Test("Renders with tag and content")
        func rendersBasic() {
            let node = Node.element("div", [:], [.text("content")])
            #expect(node.render() == "<div>content</div>")
        }

        @Test("Renders with attributes")
        func rendersWithAttributes() {
            let node = Node.element("div", ["class": "active"], [.text("content")])
            #expect(node.render() == "<div class=\"active\">content</div>")
        }

        @Test("Renders nested elements")
        func rendersNested() {
            let node = Node.element("div", [:], [
                .element("p", [:], [.text("first")]),
                .element("p", [:], [.text("second")]),
            ])
            #expect(node.render() == "<div><p>first</p><p>second</p></div>")
        }

        @Test("Renders empty element")
        func rendersEmpty() {
            let node = Node.element("div", [:], [])
            #expect(node.render() == "<div></div>")
        }
    }

    @Suite("Void Elements")
    struct VoidElements {
        @Test("Renders without closing tag")
        func rendersWithoutClosingTag() {
            let node = Node.voidElement("br", [:])
            #expect(node.render() == "<br>")
        }

        @Test("Renders with attributes")
        func rendersWithAttributes() {
            let node = Node.voidElement("meta", ["charset": "utf-8"])
            #expect(node.render() == "<meta charset=\"utf-8\">")
        }

        @Test("Renders self-closing in XML mode")
        func rendersSelfClosingXML() {
            let node = Node.voidElement("br", [:])
            #expect(node.render(RenderOptions(xmlSelfClosingTags: true)) == "<br />")
        }
    }

    @Suite("Attributes")
    struct Attributes {
        @Test("String attribute renders as key-value")
        func stringAttribute() {
            let node = Node.element("div", ["class": "active"], [])
            #expect(node.render() == "<div class=\"active\"></div>")
        }

        @Test("Integer attribute renders as key-value")
        func integerAttribute() {
            let node = Node.element("input", ["tabindex": 1], [])
            #expect(node.render() == "<input tabindex=\"1\"></input>")
        }

        @Test("Boolean true renders as name only")
        func booleanTrue() {
            let node = Node.element("input", ["disabled": true], [])
            #expect(node.render() == "<input disabled></input>")
        }

        @Test("Boolean false omits attribute")
        func booleanFalse() {
            let node = Node.element("input", ["disabled": false], [])
            #expect(node.render() == "<input></input>")
        }

        @Test("Attribute values are escaped")
        func attributeValuesEscaped() {
            let node = Node.element("div", ["data-value": "a&b\"c"], [])
            #expect(node.render() == "<div data-value=\"a&amp;b&quot;c\"></div>")
        }

        @Test("Attribute order is preserved")
        func attributeOrderIsPreserved() {
            let node = Node.voidElement("input", ["type": "text", "name": "email", "class": "form-input", "placeholder": "Enter email", "required": true])
            #expect(node.render() == "<input type=\"text\" name=\"email\" class=\"form-input\" placeholder=\"Enter email\" required>")
        }
    }

    @Suite("Fragment & Empty")
    struct FragmentAndEmpty {
        @Test("Fragment renders all children")
        func fragmentRenders() {
            let node = Node.fragment([.text("one"), .text("two"), .text("three")])
            #expect(node.render() == "onetwothree")
        }

        @Test("Empty renders nothing")
        func emptyRenders() {
            let node = Node.empty
            #expect(node.render() == "")
        }

        @Test("Fragment with mixed node types")
        func fragmentMixed() {
            let node = Node.fragment([
                .element("p", [:], [.text("hello")]),
                .text(" "),
                .element("p", [:], [.text("world")]),
            ])
            #expect(node.render() == "<p>hello</p> <p>world</p>")
        }
    }
}
