/* Java 8 */

import java.util.Arrays;
import java.util.Random;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        Lotto lotto = new Lotto();

        lotto.print();
    }
}

public class Lotto {
    private Integer[] generate() {
        return new Random().ints(1, 46)
                           .distinct()
                           .limit(6)
                           .boxed()
                           .sorted()
                           .toArray(Integer[]::new);
    }

    private String format(Integer[] numbers) {
        return Arrays.stream(numbers)
                     .map(number -> number.toString())
                     .collect(Collectors.joining(", "));
    }

    public void print() {
        System.out.println(format(generate()));
    }
}
