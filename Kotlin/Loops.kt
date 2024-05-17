fun sumOfEvens() {
    var sum = 0
    for (i in 1..50) {
        if (i % 2 == 0) {
            sum += i
        }
    }
    println("The sum of all even numbers from 1 to 50 is: $sum")
}



fun isPrime(num: Int): Boolean {
    if (num <= 1) return false
    var i = 2
    while (i * i <= num) {
        if (num % i == 0) return false
        i++
    }
    return true
}

fun findPrimesInRange(start: Int, end: Int) {
    var current = start
    println("Prime numbers between $start and $end are:")
    while (current <= end) {
        if (isPrime(current)) {
            println(current)
        }
        current++
    }
}



fun isPalindrome(number: Int): Boolean {
    var original = number
    var reversed = 0
    var remainder: Int

    while (original != 0) {
        remainder = original % 10
        reversed = reversed * 10 + remainder
        original /= 10
    }

    return number == reversed
}


// Example

fun main() {
  
    sumOfEvens()

    
    val startRange = 10
    val endRange = 50
    findPrimesInRange(startRange, endRange)

    val numberToCheck = 12321
    val isNumberPalindrome = isPalindrome(numberToCheck)
    println("Is $numberToCheck a palindrome? $isNumberPalindrome")
}
