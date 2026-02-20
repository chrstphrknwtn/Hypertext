public func ForEach<T>(_ items: [T], @HTMLBuilder content: (T) -> Node) -> Node {
    .fragment(items.map { content($0) })
}
