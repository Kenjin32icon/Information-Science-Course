import java.util.Scanner;  
  
package Exercise;  
  
public class SimpleCalculator {  
    double num2 = scanner.nextDouble();  
    // Prompt the user to enter an operator  
        System.out.print("Enter an operator (+, -, *, /): ");  
    char operator = scanner.next().charAt(0);  
    // Variable to store the result  
    double result;  
    // Perform the operation based on the operator  
        switch (operator) {  
        case '+':  
            result = num1 + num2;  
            System.out.println("Result: " + num1 + " + " + num2 + " = " + result);  
            break;  
        case '-':  
            result = num1 - num2;  
            System.out.println("Result: " + num1 + " - " + num2 + " = " + result);  
            break;  
        case '*':  
            result = num1 * num2;  
            System.out.println("Result: " + num1 + " * " + num2 + " = " + result);  
            break;  
        case '/':  
            // Check for division by zero  
            if (num2 != 0) {  
                result = num1 / num2;  
                System.out.println("Result: " + num1 + " / " + num2 + " = " + result);  
            } else {  
                System.out.println("Error: Division by zero is not allowed.");  
            }  
            break;  
        default:  
            System.out.println("Error: Invalid operator. Please use +, -, *, or /.");  
            break;  
    }  
    // Close the scanner  
        scanner.close();  
}  
}