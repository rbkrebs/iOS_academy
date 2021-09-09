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

func returnNGreatesttNumber( arrayOfNumbers : [Float], nGreatest: Int)  -> String{
    
    if(nGreatest > arrayOfNumbers.count){
        return "nGreatest must be lower than the number o elements in arrayOfNumbers"
    }
    
    
    let greatestValue : [Float] = arrayOfNumbers.sorted(by: >).dropLast(arrayOfNumbers.count-nGreatest)
    return "The greatest \( nGreatest) number is \(greatestValue)"
    
}

//Write a function that returns a list of the separated words of a given string

func returnListOfWrods( text : String) -> [String]{
    
    let arrayWords : [String] = text.components(separatedBy: " ")
    return arrayWords
    
}
//Write a function that returns the amount of strings in an array that starts with a given character

func returnArrayBasedCharacter(arrayStrings: [String], character: Character) -> [String]{
    
    var arrayOfString: [String] = []
    
    for word in arrayStrings{
        
        if(word.hasPrefix(String(character))){
            arrayOfString.append(word)
        }
        
    }
    
    return arrayOfString
    
}
//Write a function that performs a given arithmetic operation in a given pair of doubles

 enum ArithmenticsOperations{
    
    
    case addition
    case subtraction
    case multiplication
    case division
    
    

}

enum CustomExceptions: Error{
    
    case dividedByZero(String)
}

func arithmeticsOperationsFunction(operations: ArithmenticsOperations, number1: Int, number2: Int) throws -> Int{
    
    switch operations {
    case .addition:
        return  number1 + number2
    case .subtraction:
        return number1 - number2
    case .multiplication:
        return number1*number2
    case .division:
        if(number2==0){
            throw CustomExceptions.dividedByZero("second parameter must be different from zero")
        }
        
        return number1/number2
    }
}


//Write a function that returns true if a Tic-Tac-Toe board has a winner

var task1 = returnIfAllLettersAreEqual(word: "oiuytreww")
var task2 = returnSmallestNumber(arrayOfNumbers: [1,2,3,4,5,-1])
var task3 = returnAverageDoubleArray(arrayDouble: [1.0, 2.0])
var task4 = returnNGreatesttNumber(arrayOfNumbers: [1.0, 2.0, 3.5, 3.4], nGreatest: 5)
var task5 = returnListOfWrods(text: "Meu nome é Romulo Basso Krebs")
var task6 = returnArrayBasedCharacter(arrayStrings: ["oi", "teste", "oooiii"], character: "o")
var task7 = arithmeticsOperationsFunction(operations: .division, number1: 4, number2: 0)

print(task1)
print(task2)
print(task3)
print(task4)
print(task5)
print(task6)
print(task7)
