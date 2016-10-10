import scala.util.Random;

object Lotto extends App {
  println(Random.shuffle(List.range(1, 46)).slice(0, 6).sorted.mkString(", "))
}
