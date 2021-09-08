import UIKit


//Write a function that returns true if all letters are different in a given string
func returnIfAllLetterAreEqual(word : String) -> Bool{
    
    var uniqueLetterList : [Character] = []
    
    for letter in word{
        
        if uniqueLetterList.contains(letter){
            return false
        }
       
        uniqueLetterList.append(letter)
        
    }

    return true
}




var result = returnIfAllLetterAreEqual(word: "oiuytreww")

print(result)
