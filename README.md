# Hypertext

A Swift library for writing HTML with a declarative, SwiftUI-like syntax.

If you know HTML, you know Hypertext.

## Goals
- Simple API for effortless HTML authoring
- Great documentation
- Long-term API stability
- Zero dependencies

## Non-goals
- HTML validation

## Installation

Add Hypertext to your `Package.swift`:
```swift
dependencies: [
	.package(url: "https://github.com/chrstphrknwtn/Hypertext.git", from: "0.1.2")
]
```

Then add it as a dependency to your target:
```swift
.target(
	name: "YourTarget",
	dependencies: ["Hypertext"]
)
```

## Requirements

- Swift 6.0+
- macOS, Linux

## `HTMLComponent` and `HTMLPage`
Hypertext provides two protocols.
- `HTMLComponent` is the building block for reusable pieces of HTML.
- `HTMLPage` extends it for full documents you can send as HTTP responses.

### HTMLComponent

```swift
struct NavBar: HTMLComponent {
	let links: [(label: String, href: String)] = [
		("Home", "/"),
		("About", "/about"),
		("Contact", "/contact"),
	]

	var content: Node {
		Nav(.class("navbar")) {
			for link in links {
				A(href: link.href) {
					link.label
				}
			}
		}
	}
}
```

### HTMLPage
```swift
struct HomePage: HTMLPage {
	var head: Node {
		Title { "My webpage!" }
		Link(rel: "stylesheet", href: "/styles.css")
	}
	
	var body: Node {
		NavBar()
		H1 { "Welcome to my webpage!" }
	}
}
```

## Attributes

Every HTML attribute is available via dot-syntax:
```swift
Div(.id("main"), .class("container"), .hidden()) {
	A(.href("/about"), .target("_blank")) { "About" }
}
```

Many elements also have named arguments for their most common attributes:
```swift
Link(rel: "stylesheet", href: "/styles.css")

A(href: "/about", target: "_blank", rel: "noopener") { "About" }

Form(action: "/submit", method: "post") {
	Input(type: "email", name: "email", placeholder: "you@example.com")
	Button(type: "submit") { "Send" }
}
```

Hypertext doesn't enforce which attributes belong on which elements.

## Classes

Pass strings, conditionals, or both:
```swift
// Simple
Div(.class("container")) { "Hello" }

// Multiple
Div(.class("container", "main")) { "Hello" }

// Conditional
Div(.class("nav-link", ["active": isActive, "disabled": isDisabled])) { "Hello" }
```

If an element has multiple `.class()` attributes they're merged automatically into the first class attribute instance:
```swift
Div(.class("card"), .id("main"), .data("active", "true"), .class(["highlighted": isActive])) { "Hello" }
```
```html
<div class="card highlighted" id="main" data-active="true">Hello</div>
```

## Style and Script
`Style` and `Script` render their content as raw text — no HTML escaping — so CSS and JavaScript work as expected:

```swift
Style { "body { margin: 0; }" }
// <style>body { margin: 0; }</style>

Script { "console.log('hello')" }
// <script>console.log('hello')</script>

Script(src: "/app.js", .defer(), .async())
// <script src="/app.js" defer async></script>
```

**Note: `<style>` and `<script>` content is not escaped. Never pass untrusted user input to these closures.**

## Raw HTML

Hypertext escapes all text content by default. When you need to pass through a raw HTML string — like an SVG, an embed snippet, or content from a markdown renderer — use `UnsafeHTML`:
```swift
UnsafeHTML("<script>alert('Hey!')</script>")
// <script>alert('Hey!')</script>
```

## Rendering

Use `.render()` to return a `String`:
```swift
let html = HomePage().render()
```

Hummingbird and Vapor integrations are on the way.

## License

Apache 2.0