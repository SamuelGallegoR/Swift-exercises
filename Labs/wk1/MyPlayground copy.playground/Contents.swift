import UIKit

var greeting = "Hello, playground"

func sum(a:Int, b:Int)->Int{
    return a + b
}

//overloading the first function
func sum(a:Double, b:Double)->Double{
    return a + b
}


func greetings(name:String)->Void{
    if name.count > 0 {
        let message = "Hello, \(name)!"
        print(message)}
    else{
        print("Hello person without a name!")
    }
}



greetings(name: "Melina")
sum(a: 2.0, b: 4.0)



for i in 0...10{
    print(sum(a: 10, b: i))
}



func test1(x:Int, arr:[Int]) -> Bool{
    var res = false
    
    let size = arr.count
    if size == 0 {
        res = false
    } else {
        res = (arr[0] == x) || (arr[size-1] == x)
    }
    
    return res
}



func find(x:Int, arr:[Int])->Int?{
   
    for i in 0..<arr.count{
        if arr[i] == x{
            return i
        }
    }
    return nil
}

let arr = [2,3,4]
let i = find(x: 4, arr: arr )

if let idx=i{
    arr[idx]
}



test1(x: 1, arr: [1,2,3])
test1(x: 1, arr: [2,3,1])
test1(x: 1, arr: [0,1,2,3])
test1(x: 1, arr: [])





func score(touchingPowerUp:Bool, touchingSeed:Bool)->Bool{
    
    return touchingSeed || touchingPowerUp
    
}



func xor(a:Bool, b:Bool)->Bool{
    
    return (a||b) && !(a&&b)
}


score(touchingPowerUp: false, touchingSeed: false)
xor(a: false, b: false)

// THE END OF LAB EXERCISE 1

//-------------------------------------------------------//

