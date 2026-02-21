public struct Attribute: Sendable {
    public let name: String
    public let value: AttributeValue

    public init(_ name: String, _ value: AttributeValue) {
        self.name = name
        self.value = value
    }
}

public enum AttributeValue: Sendable, Equatable, ExpressibleByStringInterpolation {
    case string(String)
    case int(Int)
    case bool(Bool)

    public var stringValue: String? {
        switch self {
        case let .string(value): value
        case let .int(value): String(value)
        case .bool: nil
        }
    }
}

extension AttributeValue: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self = .string(value)
    }
}

extension AttributeValue: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self = .int(value)
    }
}

extension AttributeValue: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: Bool) {
        self = .bool(value)
    }
}
