import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */
/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
    var result = numberOne
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
 */
enum CalculationType: String {
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}
func calculateResults(numberOne: Int, numberTwo: Int, calculationType: CalculationType) -> Int {
    var result = numberOne
    switch calculationType{
       case .addition:
           result += numberTwo;
       case .substraction:
           result -= numberTwo;
       case .multiplication:
           result *= numberTwo;
       case .division:
           result /= numberTwo
    }
    print("Result: \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
}
calculateResults(numberOne: 5, numberTwo: 5, calculationType: .division)

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

calculateResults(numberOne: 85, numberTwo: 5, calculationType: .addition)
calculateResults(numberOne: 85, numberTwo: 5, calculationType: .substraction)
calculateResults(numberOne: 85, numberTwo: 5, calculationType: .multiplication)
calculateResults(numberOne: 85, numberTwo: 5, calculationType: .division)

/*
Exercise 2
Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int
 Create func getSpecs() print it with elements provided above
 */

struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int
    
func getSpecs(){
    print("Name:\(name), Year:\(productionYear), HP:\(horsePower)")
    }
}
var carOne = Car(name: "BMW", productionYear: 2000, horsePower: 245)
var carTwo = Car(name: "Chevy", productionYear: 1975, horsePower: 228)

carOne.getSpecs()
carTwo.getSpecs()


/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
Than run getSpecs() for audiQ7 and audiTT
 */
var carThree = Car(name: "Audi Q7", productionYear: 2017, horsePower: 999)
var carFour = carThree
carFour.name = "AUDI TT"
carFour.horsePower = 666
carThree.getSpecs()
carFour.getSpecs()
