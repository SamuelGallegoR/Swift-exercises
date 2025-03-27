//
//  LabTests.swift
//  
//
//  Created by Przemyslaw Pawluk on 2025-01-31.
//


import Foundation

/*
* Replace following < > with your information

<First and Last name as per registration records>
<StudentID>
*/

/*
Note: foo(z) ➞ x means that function foo for the parametr z returns x
Note: return is not the same as print
*/


//---------------------------------------------------------------------
//Question 1 (2 points)
/*
Write a function that returns true if there exists at least one number
 that is larger than or equal to n. Return false for an empty array [].

 Sample usage
existsHigher([5, 3, 15, 22, 4], 10) ➞ true

existsHigher([1, 2, 3, 4, 5], 8) ➞ false

existsHigher([4, 3, 3, 3, 2, 2, 2], 4) ➞ true

existsHigher([], 5) ➞ false
*/

func existsHigher(_ arr:[Int], _ n:Int)->Bool{
    //replace code below with your implementation
    return false
}


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
func isIsogram(_ str:String)->Bool{
    //replace code below with your implementation
    return false
}


//---------------------------------------------------------------------
//Question 3 (5 points)
/*
Create a function that counts the number of times a particular letter shows up in the word search.

Sample usage
letterCounter([
  ["D", "E", "Y", "H", "A", "D"],
  ["C", "B", "Z", "Y", "J", "K"],
  ["D", "B", "C", "A", "M", "N"],
  ["F", "G", "G", "R", "S", "R"],
  ["V", "X", "H", "A", "S", "S"]
], "D") ➞ 3

// "D" shows up 3 times: twice in the first row, once in the third row.

letterCounter([
  ["D", "E", "Y", "H", "A", "D"],
  ["C", "B", "Z", "Y", "J", "K"],
  ["D", "B", "C", "A", "M", "N"],
  ["F", "G", "G", "R", "S", "R"],
  ["V", "X", "H", "A", "S", "S"]
], "H") ➞ 2
*/

func letterCounter(_ arr:[[Character]], _ x:Character)->Int{
    //replace code below with your implementation
    return 0
}


//---------------------------------------------------------------------
//Question 4 (5 points)
/*
Write a function that returns a closure, which transforms its input by adding a particular suffix at the end.

Sample usage
let add_ly = add_suffix("ly")

add_ly("hopeless") ➞ "hopelessly"
add_ly("total") ➞ "totally"
*/

func add_suffix(_ sufix:String)->(String)->String{
    //replace code below with your implementation
    return {$0}
}


//---------------------------------------------------------------------
