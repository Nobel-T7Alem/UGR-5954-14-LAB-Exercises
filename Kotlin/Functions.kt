import kotlin.io.println

// Sort
fun sortArray(arr: IntArray): IntArray {
    return arr.sortedArray()
}

// Factorial
fun factorial(n: Int): Int {
    return if (n == 0) 1 else n * factorial(n - 1)
}

// Unique characters
fun isUnique(str: String): Boolean {
    return str.length == str.toSet().size
}

// Example
fun main() {
    
    val array = intArrayOf(5, 2, 9, 1, 5, 6)
    val sortedArray = sortArray(array)
    println("Sorted array: ${sortedArray.joinToString(", ")}")

    val number = 5
    val fact = factorial(number)
    println("Factorial of $number is: $fact")

  
    val string = "hello"
    val unique = isUnique(string)
    println("Is \"$string\" unique: $unique")
}
