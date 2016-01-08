//: Playground - noun: a place where people can play

import UIKit

func funkA() {
    print("New function A called")
}


func funkB() {
    print("New function B called")
}

func funkC() {
    funkA()
    funkB()
}

funkC()

var bankAccount = 500.50
var itemAmount = 400.00

func canPurchase(amount: Double) -> Bool {
    if bankAccount >= amount {
        return true
    }
    
    return false
}

func processPurchase(amt: Double) {
    bankAccount -= amt
    print("You made a purchase of the amount \(amt)")
}

if canPurchase(itemAmount) {
    processPurchase(itemAmount)
} else {
    print("Insufficient funds")
}

var name = "sweeny todd"

func getUpperVersion(inputStr: String) -> String {
    return inputStr.uppercaseString
}

var nameUpper = getUpperVersion(name)


func declareWinner(playerAScore: Int, playerBScore: Int) {
    if playerAScore > playerBScore {
        print("Player A Wins!")
    } else if playerBScore > playerAScore {
        print("Player B Wins!")
    } else {
        print("The game is at a standstill!!!!")
    }
}

declareWinner(50, playerBScore: 50)