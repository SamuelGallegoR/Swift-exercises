area(width w:Int, height h:Int)->Int{
  return w*h
}

area(width: 2, height: 3)

area(_ w:Int, _ h:Int)->Int{
  return w*h
}
area(2, 3)

func calculator(a:Int, b:Int, op:String)->{
  
  func add(a:Int, b:Int, op:String)->Int{return a+b}
  func deduct(a:Int, b:Int, op:String)->Int{return a-b}
  func multi(a:Int, b:Int, op:String)->Int{return a*b}
  
  switch op{
    case "+", "plus": return add(a: a, b: b)
    case "-": return deduct(a: a, b: b)
    case "*", "x": return multi(a: a, b: b)
    default: return nil
  }
}

calculator(a: 1, b: 2, op: "plus")

