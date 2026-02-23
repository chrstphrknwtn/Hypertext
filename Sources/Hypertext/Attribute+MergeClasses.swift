/// Combines multiple `class` attributes into a single attribute.
///
/// When an element has more than one `class` attribute — for example,
/// one from a component and one from the call site — this method
/// merges their values into a single space-separated string.
///
/// The merged attribute is placed at the position of the first
/// `class` attribute. All other attributes retain their original order.
///
/// ```swift
/// let attributes: [Attribute] = [.id("main"), .class("container"), .class("wide")]
/// let merged = Attribute.mergeClasses(attributes)
/// // [.id("main"), .class("container wide")]
/// ```
///
/// - Parameter attributes: The attributes to process.
/// - Returns: A new array with all `class` attributes merged into one.
public extension Attribute {
    static func mergeClasses(_ attributes: [Attribute]) -> [Attribute] {
        // Both string and conditional classes are now just strings,
        // no special treatment or consideration of the dictionary
        // literal ClassName values is necessary.
        var classes: [String] = []
        var otherAttributes: [Attribute] = []

        var firstClassIndex: Int?

        for (index, attribute) in attributes.enumerated() {
            if attribute.name == "class", let value = attribute.value.stringValue {
                classes.append(value)
                if firstClassIndex == nil { firstClassIndex = index }
            } else {
                otherAttributes.append(attribute)
            }
        }

        if classes.isEmpty {
            return attributes
        } else {
            otherAttributes.insert(Attribute("class", .string(classes.joined(separator: " "))), at: firstClassIndex ?? 0)
        }

        return otherAttributes
    }
}
