# Hypertext

A Swift library for writing HTML with a declarative, SwiftUI-like syntax.

If you know HTML, you know Hypertext.

## Installation

Add Hypertext to your `Package.swift`:
```swift
dependencies: [
	.package(url: "https://github.com/chrstphrknwtn/Hypertext.git", from: "0.1.0")
]
```

Then add it as a dependency to your target:
```swift
.target(
	name: "YourTarget",
	dependencies: ["Hypertext"]
)
```

## `HTMLComponent` and `HTMLPage`
Hypertext provides two protocols. `HTMLComponent` is the building block for reusable pieces of HTML. `HTMLPage` extends it for full documents you can send as HTTP responses.

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