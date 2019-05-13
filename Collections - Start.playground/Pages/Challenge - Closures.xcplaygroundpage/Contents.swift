//: [Previous](@previous)
/*:
 ## Challenge Time - Closures! 😎
 
 Create a constant array called `names` which contains some names as strings (any names will do — make sure there’s more than three though!). Now use `reduce` to create a string which is the concatenation of each name in the array.
 */


let names = ["Carlos", "Eduardo", "Alves", "de", "Godoi", "Aba", "Cadabra", "Alakazan"]
let combinedNames = names.reduce("") { (result, name) in
    return result + " " + name
}
/*:
 Using the same `names` array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.)
 */


let namesBiggerThenFour = names.filter { $0.count > 4 }.reduce("") { $0 + "😸 " + $1 }
namesBiggerThenFour
/*:
 Create a constant dictionary called `namesAndAges` which contains some names as strings mapped to ages as integers. Now use `filter` to create a dictionary containing only people under the age of 18.
 */


let namesAndAges = ["Carlos Eduardo": 26, "Elisabete Alves": 45, "Altair de Godoi": 50, "Someone under 18": 17]
let underEighteen = namesAndAges.filter { (name, age) in
    age < 18
}
underEighteen
/*:
 Using the same `namesAndAges` dictionary, filter out the adults (those 18 or older) and then use `map` to convert to an array containing just the names (i.e. drop the ages).
 */

let namesOverEighteen = namesAndAges.filter { $0.value > 18 }.map { $0.key }
namesOverEighteen

//: [Next](@next)
