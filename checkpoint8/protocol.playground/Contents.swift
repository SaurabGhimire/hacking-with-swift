import UIKit

protocol Building {
    var noOfRooms: Int { get set };
    var cost: Double { get set };
    var agent: String { get set };
    
    func saleSummary()
}

extension Building{
    func saleSummary() {
        print("The building has \(noOfRooms) rooms with cost \(cost) being sold by \(agent)")
    }
}

struct House: Building {
    var noOfRooms: Int;
    var cost: Double;
    var agent: String;
}

struct Office: Building {
    var noOfRooms: Int;
    var cost: Double;
    var agent: String;
}

var house1 = House(noOfRooms: 4, cost: 20000.0, agent: "Gary")
var office1 = Office(noOfRooms: 12, cost: 1000000.0, agent: "John")

house1.saleSummary()
office1.saleSummary()

