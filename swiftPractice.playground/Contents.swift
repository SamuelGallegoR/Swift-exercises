/*
 1. Variables and Constants
 Write a function that calculates the area of a rectangle using variables and constants.
 */

func calculateRectangleArea(length:Double, width:Double) -> Double{
    var area = length*width
    return area
}


let area = calculateRectangleArea(length: 9.0, width: 3.0)

print("The area of the rectangle is \(area).")


/*
 2. Arithmetic Operations
 Write a function that calculates the total cost of items including tax and discounts.

 // Example usage:

 let total = calculateTotalCost(itemPrices: [10.0, 20.0, 15.0], tax: 5.0, discount: 10.0) print("The total cost is \(total).")
 */

func calculateTotalCost(itemPrices:[Double], tax: Double, discount:Double)->Double{
    let subtotal = itemPrices.reduce(0, +) // Sum of all item prices
        let taxAmount = (tax / 100) * subtotal // Calculate tax
        let discountAmount = (discount / 100) * subtotal // Calculate discount
        let total = subtotal + taxAmount - discountAmount // Compute total cost
        return total
}

let total = calculateTotalCost(itemPrices: [10.0, 20.0, 15.0], tax: 5.0, discount: 10.0)
print("The total cost is \(total).")




