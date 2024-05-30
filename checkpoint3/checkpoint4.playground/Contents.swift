import UIKit

// Define custom error types
enum SquareRootError: Error {
    case outOfBounds
    case notFound
}

func squareRoot(_ num:Int) throws -> Int  {
    if(num<1 || num>10000) {
        throw SquareRootError.outOfBounds;
    }
    for i in 1...num{
        if(i*i == num){
            return i;
        }
    }
    throw SquareRootError.notFound;
}

do{
    let result = try squareRoot(3);
    print("The square root of num is \(result)")
} catch SquareRootError.outOfBounds{
    print("Number is out of bounds");
} catch SquareRootError.notFound{
    print("The square root of number is not found")
} catch{
    print("Unknown errors");
}
