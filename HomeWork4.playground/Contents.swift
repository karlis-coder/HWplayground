import UIKit

//MARK: - HW4
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

//dictionary
let myTeam = "Gurls"
let results = [
    "Dallax Mags": ["99 : 44", "33 : 43"],
    "NY Gopknicks": ["94 : 34", "49 : 34"],
]
//loop
for (team, scores) in results {
    scores.forEach { score in
        print("\(myTeam) vs \(team) scored \(score)")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */
let intWallet = [5,10,20,50,100,200,500]
func calculateCash(){
    let total = intWallet.reduce(0, +)
    print(total)
}
calculateCash()
/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

let garbageNums = [1,3,5,4,2,8,10]
func isEvenNumber(number: Int) -> Bool {
    number % 2 == 0
}
garbageNums.forEach { garbage in
    printWithDescription(number: garbage)
}
func printWithDescription(number: Int) {
    print("\(number) is \(isEvenNumber(number: number) ? "even" : "odd")")
}

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */
    func createArray(start: Int, end: Int) -> [Int] {
    Array(start...end)
    }
    var array = createArray(start: 1, end: 100)
    print(array)
/*

 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

/*for i in 1...100 {
    array.filter{
     $0; isEvenNumber(number: 3)
        
    }
    }
*/

func createArray(from start: Int, to end: Int) -> [Int] {
    Array(start...end)
}

func isEvenNumber(_ number: Int) -> Bool {
    number % 2 == 0
}

array.forEach { number in
    if isEvenNumber(number: number) {
        array.remove(at: array.firstIndex(of: number)!)
    }
}
print(array)
