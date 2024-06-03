import UIKit

enum GearChange{
    case up;
    case down;
}

enum GearChangeError : Error{
    case outOfRange
}

struct Car {
    var model:String;
    var noOfSeats:Int;
    var currentGear = 1{
        didSet{
            print(currentGear)
        }
    };
    
    mutating func changeGear(input: GearChange) throws {
        print("inside change gear")
        
        if(input == GearChange.up){
            if(currentGear == 10){
                throw GearChangeError.outOfRange;
                
            }
            currentGear+=1;
            return;
        }
        if(currentGear == 1){
            throw GearChangeError.outOfRange;
        }
        currentGear-=1;
    }
}

var car = Car(model: "Tesla", noOfSeats:4);


for i in 1...13{
    do{
        try car.changeGear(input: GearChange.up)
    }
    catch  GearChangeError.outOfRange{
        print("Gear is out of range");
    }catch{
        print("Something went wrong");
    }
}
