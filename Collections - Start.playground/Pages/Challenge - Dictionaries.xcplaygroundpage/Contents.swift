//: [Previous](@previous)
/*:
 ## Challenge Time - Dictionaries!
 
 Create a dictionary with the following keys: name, profession, country, state, and city. For the values, put your own name, profession, country, state, and city.
 */
var carlos = [
    "name": "Carlos Eduardo",
    "profession": "Programmer",
    "country": "Brazil",
    "state": "Paraná",
    "city": "Curitiba"
]

/*:
 You suddenly decide to move to Cleveland. Update your city to Cleveland, your state to Ohio, and your country to USA.
 */
carlos.updateValue("Cleveland", forKey: "city")
carlos["state"] = "Ohio"
carlos["country"] = "USA"

/*:
 Given a dictionary in the above format, write a function that prints a given person's city and state.
 */
func printLocation(ofPerson person: [String: String]) {
    if let state = person["state"],
        let city = person["city"] {
        print("They live \(city), \(state)")
    }
}

printLocation(ofPerson: carlos)

//: [Next](@next)
