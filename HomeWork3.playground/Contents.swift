import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var deposit = 500.0
var profit = 0.0
var rate = 1.02
var period = 0
for _ in 1...5{
    period += 1
  deposit = deposit * rate
  profit = deposit - (deposit / rate)
  print("\nAmount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
}

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let arrayOfInt: [Int] = [1,2,3,4,5,6,7,8,9]
for evenNumber in arrayOfInt where evenNumber % 2 == 0{
print("My even numbers are: \(evenNumber)")
}

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

let randomInt = Int.random(in: 1...10)
var counter = 0
for _ in 1...10 {
    counter += 1
    if randomInt == 5 {
        break
    }
}
print("Number 5 will be after \(counter) shuffles")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
var numberOfDays = 0
let postHeight = 10
let climbingDuringDay = 2
let climbingDuringNight = -1
var currentHeight = 0
for _ in 0...postHeight {
    currentHeight += climbingDuringDay
    currentHeight += climbingDuringNight
    if currentHeight == postHeight{
        break
    }
    numberOfDays += 1
}
print("\nBug will spend \(numberOfDays) days to reach top of the post")
