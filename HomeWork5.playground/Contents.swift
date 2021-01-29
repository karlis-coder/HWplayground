import UIKit

//MARK: - HW5
/*
Exercise 1
1.Create new Class Orange(Fruit). Inside the Class declare:
     color = ""
     teste = ""
     weight = 0.0
 2.Make Class example from Orange Class and named it as someOrange.
 3.Give specific value for:
     color = "Orange"
     taste = "Sweet"
     weight = 0.66
 4.print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")
*/

class Orange {
    var color = ""
    var taste = ""
    var weight = 0.0
    var tomato = false
   
}

let someOrange = Orange()
someOrange.color = "green"
someOrange.taste = "bad"
someOrange.weight = 9.4
someOrange.tomato = false

print("My \(someOrange.weight) kg orange has \(someOrange.color) color and a\(someOrange.taste) taste and is a tomato: \(someOrange.tomato)")


/*
Exercise 2
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Paret Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/

    class Figure {
        var height: Float
        var width: Float
        var radius: Float?
        var square: Float?
        var perimeter: Float?
        init(height: Float, width: Float) {
            self.height = height
            self.width = width
        }
        func squareOfFigure() -> Float { return square! }
            func perimeterOfFigure() -> Float { return perimeter! }
        }
    class Rectangle: Figure {
        override func squareOfFigure() -> Float {
            return height * width
        }
        override func perimeterOfFigure() -> Float {
            return 2*(height + width)
        }
        func description() {
            print("Rectangle area is: \(squareOfFigure()), and perimeter of Figure is: \(perimeterOfFigure())")
    }
    }
    var myRectangle = Rectangle(height: 8, width: 6)
    myRectangle.description()
