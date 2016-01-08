//: Playground - noun: a place where people can play

import UIKit

var myAccount = 1000.00
var myFriendsAccount = 2000.00
var myFriendsFriendsAccount = 3000.00

if myAccount > 900 && myFriendsAccount > 1500 && myFriendsFriendsAccount > 2000 {
    print("We've got moocho moola!")
}

var playerAAlive = true
var playerBAlive = false
var playerCAlive = true

if playerAAlive == false || playerBAlive == false || playerCAlive == false {
    print("One of your team members is down!")
}

//Can I retire?????
var age = 75
var account = 100000
var richUncleThatDiedWhoLeftMeAnInheritance = false

if account > 70000 && age >= 60 || richUncleThatDiedWhoLeftMeAnInheritance == true {
    print("You can retire!!!")
}