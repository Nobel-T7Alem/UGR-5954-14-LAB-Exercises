import java.time.LocalTime
import java.time.format.DateTimeFormatter

fun main() {
    val currentTime = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))
    println("Current time: $currentTime")
}

val temperature: Double = 25.5

val grade: Char = 'A'

