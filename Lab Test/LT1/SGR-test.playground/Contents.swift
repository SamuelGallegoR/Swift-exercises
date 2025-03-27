import UIKit
import XCTest

/*
 Feb 6, 2025
 Samuel Gallego Rivera
 ID. 101435708
*/

/*
Note: foo(z) ➞ x means that function foo for the parametr z returns x
Note: return is not the same as print
*/


//---------------------------------------------------------------------
//Question 1 (2 points)
/*
Write a function that returns true if there exists a number at least three times as large as n, false otherwise. Return false for an empty array [].
Sample usage
existsHigher([5, 3, 15, 22, 4], 5) ➞ true

existsHigher([1, 2, 3, 4, 5], 8) ➞ false

existsHigher([9, 3, 3, 3, 2, 2, 2], 4) ➞ false

existsHigher([], 5) ➞ false
*/

func existsHigher(_ arr: [Int], _ n: Int) -> Bool {
    return arr.contains { $0 >= 3 * n }
}

existsHigher([5, 3, 15, 22, 4], 5)
existsHigher([1, 2, 3, 4, 5], 8)
existsHigher([9, 3, 3, 3, 2, 2, 2], 4)
existsHigher([], 5)


//---------------------------------------------------------------------
//Question 2 (3 points)
/*
An isogram is a word that has no duplicate letters. Create a function that takes a string and returns either true or false depending on whether or not it's an "isogram".
Sample usage
isIsogram("Algorism") ➞ true

isIsogram("PasSword") ➞ false
// Not case sensitive.

isIsogram("Consecutive") ➞ false
*/

func isIsogram(_ str: String) -> Bool {
    let lowercasedStr = str.lowercased()
    return Set(lowercasedStr).count == lowercasedStr.count
}

isIsogram("Algorism")
isIsogram("PasSword")
isIsogram("Consecutive")

//---------------------------------------------------------------------
//Question 3 (5 points)
/*
Create a function that returns a dictionary with counts the number of times a particular letter shows up in each row. Return empty dictionary for empty array

Sample usage
letterCounter([
  ["D", "E", "Y", "H", "A", "D"],
  ["C", "B", "Z", "Y", "J", "K"],
  ["D", "B", "C", "A", "M", "N"],
  ["F", "G", "G", "R", "S", "R"],
  ["V", "X", "H", "A", "S", "S"]
], "D") ➞ [0:2, 1:0, 2:1, 3:0, 4:0]

// "D" shows up 3 times: twice in the first row, once in the third row.

letterCounter([
  ["D", "E", "Y", "H", "A", "D"],
  ["C", "B", "Z", "Y", "J", "K"],
  ["D", "B", "C", "A", "M", "N"],
  ["F", "G", "G", "R", "S", "R"],
  ["V", "X", "H", "A", "S", "S"]
], "H") ➞ [0:1, 1:0, 2:0, 3:0, 4:1]
*/


func letterCounter(_ arr: [[Character]], _ x: Character) -> [Int: Int] {
    var result: [Int: Int] = [:]
    for (index, row) in arr.enumerated() {
        result[index] = row.filter { $0 == x }.count
    }
    return Dictionary(uniqueKeysWithValues: result.sorted { $0.key < $1.key })
}



letterCounter([
  ["D", "E", "Y", "H", "A", "D"],
  ["C", "B", "Z", "Y", "J", "K"],
  ["D", "B", "C", "A", "M", "N"],
  ["F", "G", "G", "R", "S", "R"],
  ["V", "X", "H", "A", "S", "S"]
], "D")

// result from this is [1: 0, 3: 0, 0: 2, 2: 1, 4: 0]  which is correct but un-ordered. [0: 2, 1: 0, 2: 1, 3: 0, 4: 0]

//---------------------------------------------------------------------
//Question 4 (5 points)
/*
Write a function that returns a closure, which transforms its input by adding a particular preffix and postfix to the word.

Sample usage
let add_ly = add_suffix("mega","y")

add_ly("ton") ➞ "megatony"
add_ly("watt") ➞ "megawatty"
*/

func add_suffix(_ prefix: String, _ postfix: String) -> (String) -> String {
    return { word in prefix + word + postfix }
}
let add_ly = add_suffix("mega","y")
add_ly("ton")
add_ly("watt")


//---------------------------------------------------------------------
