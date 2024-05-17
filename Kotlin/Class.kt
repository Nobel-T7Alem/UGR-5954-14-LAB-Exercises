class Rectangle(private val length: Double, private val width: Double) {

    fun perimeter(): Double {
        return 2 * (length + width)
    }

    fun area(): Double {
        return length * width
    }
}

fun mainRectangle() {
    val rectangle = Rectangle(5.0, 3.0)
    println("Perimeter of the rectangle: ${rectangle.perimeter()}")
    println("Area of the rectangle: ${rectangle.area()}")
}


class Triangle(private val side1: Double, private val side2: Double, private val side3: Double) {

    fun type(): String {
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral"
            side1 == side2 || side1 == side3 || side2 == side3 -> "Isosceles"
            else -> "Scalene"
        }
    }
}

fun mainTriangle() {
    val triangle = Triangle(3.0, 3.0, 3.0)
    println("The triangle is: ${triangle.type()}")
}



class ShoppingCart {
    private val items = mutableListOf<Pair<String, Double>>()

    fun addItem(name: String, price: Double) {
        items.add(Pair(name, price))
    }

    fun removeItem(name: String) {
        items.removeIf { it.first == name }
    }

    fun totalPrice(): Double {
        return items.sumOf { it.second }
    }

    fun listItems() {
        println("Items in the shopping cart:")
        for (item in items) {
            println("${item.first}: $${item.second}")
        }
    }
}

fun mainShoppingCart() {
    val cart = ShoppingCart()
    cart.addItem("Apple", 0.99)
    cart.addItem("Banana", 0.79)
    cart.addItem("Orange", 1.29)

    cart.listItems()
    println("Total price: $${cart.totalPrice()}")

    cart.removeItem("Banana")
    cart.listItems()
    println("Total price after removal: $${cart.totalPrice()}")
}



// Example

fun main() {
    println("Rectangle Example:")
    mainRectangle()
    
    println("\nTriangle Example:")
    mainTriangle()
    
    println("\nShopping Cart Example:")
    mainShoppingCart()
}
