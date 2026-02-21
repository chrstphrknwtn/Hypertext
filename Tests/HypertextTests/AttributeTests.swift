@testable import Hypertext
import Testing

enum AttributeTests {
    @Suite("Attributes")
    struct Attributes {
        @Test("String attribute")
        func stringAttribute() {
            let attr = Attribute("class", "active")
            #expect(attr.name == "class")
            #expect(attr.value == .string("active"))
        }

        @Test("Integer attribute")
        func integerAttribute() {
            let attr = Attribute("tabindex", 1)
            #expect(attr.name == "tabindex")
            #expect(attr.value == .int(1))
        }

        @Test("Boolean true attribute")
        func booleanTrue() {
            let attr = Attribute("disabled", true)
            #expect(attr.name == "disabled")
            #expect(attr.value == .bool(true))
        }

        @Test("Boolean false attribute")
        func booleanFalse() {
            let attr = Attribute("disabled", false)
            #expect(attr.name == "disabled")
            #expect(attr.value == .bool(false))
        }

        @Test("Attribute order is preserved")
        func attributeOrderPreserved() {
            let attrs: [Attribute] = [.type("text"), .name("email"), .class("input"), .required()]
            #expect(attrs[0].name == "type")
            #expect(attrs[1].name == "name")
            #expect(attrs[2].name == "class")
            #expect(attrs[3].name == "required")
        }
    }

    @Suite("Shortcuts")
    struct Shortcuts {
        @Test("Class shortcut")
        func classShortcut() {
            let attr = Attribute.class("container")
            #expect(attr.name == "class")
            #expect(attr.value == .string("container"))
        }

        @Test("Id shortcut")
        func idShortcut() {
            let attr = Attribute.id("main")
            #expect(attr.name == "id")
            #expect(attr.value == .string("main"))
        }

        @Test("Data prefix")
        func dataPrefix() {
            let attr = Attribute.data("id", "42")
            #expect(attr.name == "data-id")
            #expect(attr.value == .string("42"))
        }

        @Test("Aria prefix")
        func ariaPrefix() {
            let attr = Attribute.aria("label", "Close")
            #expect(attr.name == "aria-label")
            #expect(attr.value == .string("Close"))
        }

        @Test("Boolean shortcut defaults to true")
        func booleanDefaultTrue() {
            let attr = Attribute.disabled()
            #expect(attr.value == .bool(true))
        }

        @Test("Boolean shortcut accepts false")
        func booleanExplicitFalse() {
            let attr = Attribute.disabled(false)
            #expect(attr.value == .bool(false))
        }

        @Test("Boolean shortcut accepts true")
        func booleanExplicitTrue() {
            let attr = Attribute.required(true)
            #expect(attr.value == .bool(true))
        }

        @Test("Download without value")
        func downloadBare() {
            let attr = Attribute.download()
            #expect(attr.name == "download")
            #expect(attr.value == .bool(true))
        }

        @Test("Download with filename")
        func downloadFilename() {
            let attr = Attribute.download("report.pdf")
            #expect(attr.name == "download")
            #expect(attr.value == .string("report.pdf"))
        }

        @Test("Value string overload")
        func valueString() {
            let attr = Attribute.value("hello")
            #expect(attr.value == .string("hello"))
        }

        @Test("Value int overload")
        func valueInt() {
            let attr = Attribute.value(42)
            #expect(attr.value == .int(42))
        }

        @Test("Min string overload")
        func minString() {
            let attr = Attribute.min("0")
            #expect(attr.value == .string("0"))
        }

        @Test("Min int overload")
        func minInt() {
            let attr = Attribute.min(0)
            #expect(attr.value == .int(0))
        }

        @Test("Max string overload")
        func maxString() {
            let attr = Attribute.max("100")
            #expect(attr.value == .string("100"))
        }

        @Test("Max int overload")
        func maxInt() {
            let attr = Attribute.max(100)
            #expect(attr.value == .int(100))
        }
    }
}
