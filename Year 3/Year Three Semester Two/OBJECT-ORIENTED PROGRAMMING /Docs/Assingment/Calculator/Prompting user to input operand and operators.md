import java.util.Scanner;

public class UserInputExample {
    public static void main(String[] args) {
        // Create a Scanner object to read input from the user
        Scanner scanner = new Scanner(System.in);

        // Prompt the user to enter the first operand
        System.out.print("Please enter the first operand (number): ");
        double operand1 = scanner.nextDouble();

        // Prompt the user to enter the second operand
        System.out.print("Please enter the second operand (number): ");
        double operand2 = scanner.nextDouble();

        // Prompt the user to enter an operator
        System.out.print("Please enter an operator (+, -, *, /): ");
        char operator = scanner.next().charAt(0);

        // Display the inputs
        System.out.println("You entered: " + operand1 + " " + operator + " " + operand2);

        // Close the scanner
        scanner.close();
    }
}
