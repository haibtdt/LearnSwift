//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/************************

       OPTIONAL

************************/


//let optionObj : NSObject? = NSObject()
let optionObj : NSObject? = nil

let description = optionObj?.description


/************************

======== ENUM ===========

************************/

enum Rank : Int {
    
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func compare(anotherCard: Rank) -> Int {
        
        return (self.rawValue - anotherCard.rawValue);
        
    }
    
}

let myRank = Rank.Seven
let myFriendRank = Rank.Nine
let anotherFriendRank = Rank.Six

let result1 = myRank.compare(myFriendRank)
let result2 = myRank.compare(anotherFriendRank)


if let someRandomRank = Rank(rawValue: 1) {
    
    let description = someRandomRank
    description.rawValue
    
}

enum Suit : Int {
    
    case Spades, Hearts, Diamonds, Clubs
    
    func simpleDescription () -> String{
        
        switch self {
            
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clusb"
            
        }
        
    }
    
    func color () -> String {
        
        if self == .Spades || self == .Clubs {
            
            return "black"
            
        } else {
            
            return "red"
        }
        
        
    }
    
}


let suit = Suit.Hearts
suit.simpleDescription()
suit.rawValue
suit.color()



enum ServerResponse {
    
    case Result(String, String)
    
    case Error(String)
    
}
func printResponse (resonse : ServerResponse) {
    
    switch resonse {
        
    case let .Result(payload1, payload2):
        print("payload 1: \(payload1)")
    case let .Error(errDetail):
        print("error detail: \(errDetail)")
        
    }
    
}


let response1 = ServerResponse.Result("payload 1", "payload 2")
let response2 = ServerResponse.Error("error detail")



printResponse(response1)
printResponse(response2)


/************************

======== EXTENSION ======

************************/
extension Double  {
    
    var absoluteValue : Double {
        
        if self > 0.0 {
            
            return self
            
        }
        
        return -self
        
    }
    
    
}


let d = -7.0
d.absoluteValue

/************************

======== RANGE ======

************************/

//let myRange = 2..<4
let myRange = 2...4
for f in myRange {
    
    print(f)
    
}




