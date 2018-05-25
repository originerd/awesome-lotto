import scala.util.Random

object Lotto extends App {
  println(Random.shuffle(1 to 45).take(6).sorted.mkString(", "))
}
