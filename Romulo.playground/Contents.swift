import UIKit

enum MyError: Error {
    case runtimeError(String)
}


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
    
    let lowerValue : Int = arrayOfNumbers.min() ?? 0
    return "O menor número é \(lowerValue)"
    
}

//Write a function that returns the average of a given array of doubles

func returnAverageDoubleArray(arrayDouble: [Double]) -> String {
    

    
    return "Média \()"
}

//Write a function that returns N greatest numbers of an array of floats
//Write a function that returns a list of the separated words of a given string
//Write a function that returns the amount of strings in an array that starts with a given character
//Write a function that performs a given arithmetic operation in a given pair of doubles
//Write a function that returns true if a Tic-Tac-Toe board has a winner

var task1 = returnIfAllLettersAreEqual(word: "oiuytreww")
var task2 = returnSmallestNumber(arrayOfNumbers: [1,2,3,4,5,-1])


print(task1)
print(task2)
