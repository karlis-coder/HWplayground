import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

var numberUno = 6.56
var numberDue = 78.94
var numberTres = Double(numberUno) + Double(numberDue)
print(numberTres)


/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

var numberOne = 5
var numberTwo = 4
let divided = numberOne / numberTwo
let remainder = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo) the result is \(divided), remainder is \(remainder)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var price = 1000
var qty = 11
if qty >= 10 {
    price = 850
} else if qty >= 5 {
    price = 900
}
var totalSum = qty * price
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

/*
 
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

let userInputAge = "33a"
if let age = Int(userInputAge) {
    print(age)
} else {
    print("can't")
}

/*
 
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

let birthdayYear = 1987
let nowYear = 2021
let monthsInYear = 12
let daysInYear = 365.25
let totalYearsFromBirth = nowYear - birthdayYear
let totalMonthsFromBirth = monthsInYear * totalYearsFromBirth
let totalDaysFromBirth = Int(daysInYear) * totalMonthsFromBirth
print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthsFromBirth), total days: \(totalDaysFromBirth)")


/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

let birthdayMonth = 10
var countQuarter = ""
switch birthdayMonth {
case 1...3:
    countQuarter = "first quarter"
case 3...6:
    countQuarter = "second quarter"
case 6...9:
    countQuarter = "third quarter"
case 9...12:
    countQuarter = "fourth quarter"
default:
    countQuarter = "Un-reborn again"
}
print("I was born in the \(countQuarter) of the year \(birthdayYear)")



