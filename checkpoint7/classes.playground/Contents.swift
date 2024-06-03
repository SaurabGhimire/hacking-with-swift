import UIKit

class Animal {
    let legs: Int;
    init(legs: Int){
        self.legs = legs;
    }
    
    func speak(){
        print("Animals can't speak")
    }
    
    
}

class Dog: Animal{
    override init(legs: Int) {
        super.init(legs: legs);
        
    }
    override func speak(){
        print("Dogs bark!!")
    }
}

class Cat: Animal{
    let isTame: Bool
    init(legs: Int, isTame:  Bool){
        self.isTame = isTame;
        super.init(legs: legs)
    }
    
    override func speak(){
        print("Cats meow!!")
    }
}

class Corgi: Dog{
    override init(legs: Int){
        super.init(legs: legs)
    }
}

class Poodle: Dog{
    override init(legs: Int){
        super.init(legs: legs)
    }
}

class Persian: Cat{
     override init(legs: Int, isTame: Bool) {
         super.init(legs: legs, isTame: isTame)
    }
}

class Lion: Cat{
     override init(legs: Int, isTame: Bool) {
         super.init(legs: legs, isTame: isTame)
    }
}
