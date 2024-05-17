import kotlin.io.println

// Triangle
fun mainTriangleConditionals() {
    val side1 = 5
    val side2 = 5
    val side3 = 5

    if (side1 == side2 && side2 == side3) {
        println("Equilateral triangle")
    } else if (side1 == side2 || side1 == side3 || side2 == side3) {
        println("Isosceles triangle")
    } else {
        println("Scalene triangle")
    }
}

// Salary
fun mainSalary() {
    val hoursWorked = 45
    val hourlyRate = 20.0

    val overtimeHours = if (hoursWorked > 40) hoursWorked - 40 else 0
    val regularHours = if (hoursWorked > 40) 40 else hoursWorked

    val regularPay = regularHours * hourlyRate
    val overtimePay = overtimeHours * hourlyRate * 1.5

    val totalPay = regularPay + overtimePay

    println("Total salary is: $totalPay")
}

// Season
fun mainSeason() {
    val month = 3
    val day = 21

    val season = when (month) {
        12, 1, 2 -> "Winter"
        3 -> if (day >= 21) "Spring" else "Winter"
        4, 5 -> "Spring"
        6 -> if (day >= 21) "Summer" else "Spring"
        7, 8 -> "Summer"
        9 -> if (day >= 23) "Autumn" else "Summer"
        10, 11 -> "Autumn"
        else -> "Invalid month"
    }

    println("The season is: $season")
}

// Largest number
fun mainLargestNumber() {
    val num1 = 10
    val num2 = 20
    val num3 = 30

    val largest: Int = if (num1 >= num2) {
        if (num1 >= num3) num1 else num3
    } else {
        if (num2 >= num3) num2 else num3
    }

    println("The largest number is: $largest")
}

// Main function to call all other functions
fun main() {
    mainTriangleConditionals()
    mainSalary()
    mainSeason()
    mainLargestNumber()
}
