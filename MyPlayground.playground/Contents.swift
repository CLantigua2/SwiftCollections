import Cocoa

var str = "Hello, playground"

var favFoods: [String] = ["Tacos", "Pizza", "Ice Cream"]

let newFav = "Apple"


favFoods.append(newFav)

print(favFoods)

func howMany(names: [String], target: String) -> Int {
    var count: Int = 0
    for name in names {
        if name == target {
            count += 1
        }
    }
    return count
}

print(howMany(names: ["Carlos", "Jenny", "Nataly", "Carlos"], target: "Carlos"))

let dictionary: [String: Int] = ["Carlos": 34, "Nataly": 4, "Jenny": 50]

print(dictionary["Carlos"]!)
