print("Hello, world!")

class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

print("Creating a shape and find the perimeter and side length ")
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.simpleDescription())
print("This triangle has perimeter of \(triangle.perimeter) ")
triangle.perimeter = 9.9
print("We set the perimeter to be \(triangle.perimeter) and it now has side length of \(triangle.sideLength)")
