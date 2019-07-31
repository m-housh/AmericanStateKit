# AmericanStateKit

A utility for validating and working with American states and state abbreviations.


## Usage
-------------

You can access arrays of the states, state names, and state abbreviations through the `AllStates` struct.

```swift

print(AllStates.states)

print(AllStates.names)

print(AllStates.abbreviations)

```

You can test if a string is a state name or a state abbreviation.

```swift

guard let fl = "fl".state, let florida = "florida".state else {
    throw fatalError()
}

print(fl.name == florida.name)
// True

print(fl.abbreviation == florida.abbreviation)
// True

print(fl == florida)
// False

```

For states with multiple words, the white spaces are ignored / stripped when initializing.

```swift

let one = AmericanState.fromString("newyork")!
let two = AmericanState.fromString("new york")!

print(one == two)
/// True
```

### Using as a validator.

```swift

import Validation
import AmericanStateKit

struct MyModel: Codable, Reflectable {
    let state: String?
}

extension MyModel: Validatable {

    static func validations() throws -> Validations<MyModel> {
        var validations = Validations(MyModel.self)
        try validations.add(\.state, !.nil && .state)
        return validations
    }
    
    var isValid: Bool {
        do {
    
        } catch {
    return false
}
    }
}

```
