Here's a simple Java program that takes an integer as input and determines whether it is odd or even:

```java
import java.util.Scanner;

public class OddOrEven {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter an integer: ");
        int number = scanner.nextInt();

        if (number % 2 == 0) {
            System.out.println(number + " is even.");
        } else {
            System.out.println(number + " is odd.");
        }

        scanner.close();
    }
}
```

**How it works**

1. We import the `Scanner` class to read user input.
2. In the `main` method, we create a new `Scanner` object to read from the standard input (`System.in`).
3. The program prompts the user to enter an integer using `System.out.println`.
4. We use the modulo operator (`%`) to find the remainder of dividing the input number by 2.
5. If the remainder is 0, it means the number is even (i.e., divisible by 2), so we print "is even." Otherwise, it's odd.

**Example Use Cases**

Here are some examples:

```
Enter an integer: 
10
10 is even.

15
15 is odd.
```