//
//  CiphersViewModel.swift
//  CodeBreaker
//
//  Created by Spencer Hurd on 8/2/22.
//

import Foundation

// http://practicalcryptography.com/ciphers/classical-era/

class CiphersViewModel {
    
    let dictOfAlphabet: [String:Int] = [
        "a": 0,     "b": 1,     "c": 2,     "d": 3,     "e": 4,
        "f": 5,     "g": 6,     "h": 7,     "i": 8,     "j": 9,
        "k": 10,    "l": 11,    "m": 12,    "n": 13,    "o": 14,
        "p": 15,    "q": 16,    "r": 17,    "s": 18,    "t": 19,
        "u": 20,    "v": 21,    "w": 22,    "x": 23,    "y": 24,
        "z": 25
    ]
    var shiftedAlphabet: [String] = Array(arrayLiteral: "abcdefghijklmnopqrstuvwxyz")
    
    let caesarShiftValue: Int = 3
    var wordToEncode: String = "hello"
    
    var encodedWord: String = ""
    
    // Method 1
        // remove each value from the beginning of the shiftedAlphabet string and append it to the end of the string. Do this the number of times set as the caesarShiftValue.
            // convert string to array for easier processing
        // for each letter in wordToEncode
            // find the numerical value of the letter in the dictionary
            // add the caesarShiftValue to that value and find the letter at that index in the shiftedAlphabet
            // append that value to the encodedString
    func shiftAlphabet() {
        for _ in 0..<caesarShiftValue {
            shiftedAlphabet.append( shiftedAlphabet.removeFirst() )
        }
    }
    func encodeWordWithCaesarShift() {
        shiftAlphabet()
        for letter in wordToEncode {
            let shiftedIndex = (dictOfAlphabet[String(letter)] ?? 0) + caesarShiftValue
            // TODO: Need to figure out how to start at beginning of shiftedAlphabet if index reaches the end of the array
            let encodedLetter = shiftedAlphabet[shiftedIndex]
            encodedWord.append(encodedLetter)
        }
    }
    
}
