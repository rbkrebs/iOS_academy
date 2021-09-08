import UIKit


//Write a function that returns true if all letters are different in a given string
func returnIfAllLettersAreEqual(word : String) -> Bool{
    
    var uniqueLetterList : [Character] = []
    
    for letter in word{
        
        if uniqueLetterList.contains(letter){
            return false
        }
       
        uniqueLetterList.append(letter)
        
    }

    return true
}


//Write a function that returns the smallest number of an array of integers

func returnSmallestNumber( arrayOfNumbers : [Int])  -> String{
    
    let lowestValue : Int = arrayOfNumbers.min() ?? 0
    return "The lowest number is \(lowestValue)"
    
}

//Write a function that returns the average of a given array of doubles

func returnAverageDoubleArray(arrayDouble: [Double]) -> String {
    
    var sum : Double = 0.0
    let numberOfItems: Double = Double(arrayDouble.count)
    
    for item in arrayDouble{
        sum += item
    }
    
    return "The average is \(sum/numberOfItems)"
}

//Write a function that returns N greatest numbers of an array of floats

func returnGreatesttNumber( arrayOfNumbers : [Float])  -> String{
    
    let greatestValue : Float = arrayOfNumbers.max() ?? 0.0
    return "The greatest number is \(greatestValue)"
    
}

//Write a function that returns a list of the separated words of a given string

func returnListOfWrods( text : String) -> [String]{
    
    let arrayWords : [String] = text.components(separatedBy: " ")
    return arrayWords
    
}
//Write a function that returns the amount of strings in an array that starts with a given character
//Write a function that performs a given arithmetic operation in a given pair of doubles
//Write a function that returns true if a Tic-Tac-Toe board has a winner

var task1 = returnIfAllLettersAreEqual(word: "oiuytreww")
var task2 = returnSmallestNumber(arrayOfNumbers: [1,2,3,4,5,-1])
var task3 = returnAverageDoubleArray(arrayDouble: [1.0, 2.0])
var task4 = returnGreatesttNumber(arrayOfNumbers: [1.0, 2.0, 3.5, 3.4])
var task5 = returnListOfWrods(text: "Meu nome é Romulo Basso Krebs")


print(task1)
print(task2)
print(task3)
print(task4)
print(task5)
