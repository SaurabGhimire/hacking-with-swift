import UIKit

func checkpoint(arr: [Int]?) -> Int{
    guard let arr = arr else {
        return Int.random(in: 1...100);
    }
    let index =  Int.random(in: 0...arr.count);
    return arr[index];
}

let ans = checkpoint(arr: [1,2,3,4,5]);
print(ans);


