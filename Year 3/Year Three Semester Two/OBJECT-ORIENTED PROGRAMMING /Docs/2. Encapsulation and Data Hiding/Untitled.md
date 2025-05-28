package Encalpsulation;  
  
public class StudentofTUK {  
    private String name;  
    private String email;  
    private int regno;  
    private String course;  
    private int year;  
  
  
    public StudentofTUK(String name, String email, int regno, String coure, int year) {  
        this.name = name;  
        this.email = email;  
        this.regno = regno;  
        this.course = course;  
        this.year =  year;  
  
    }  
  
    @Override  
    public String toString() {  
        return "StudentofTUK{" +  
                "name='" + name + '\'' +  
                ", email='" + email + '\'' +  
                ", regno=" + regno +  
                ", course='" + course + '\'' +  
                ", year=" + year +  
                '}';  
    }  
    public static void main (String[] args){  
        StudentofTUK student1 = new StudentofTUK (   "John Doe",  
                "johndooe32@gmail.com", "12345", "Computer Science", 2);  
        StudentofTUK student1 = new StudentofTUK (   "Jane Smith",  
                "Janesmith32@gmail.com", "12345", "Computer Science", 2);  
  
        student1.toString();  
        System.out.println(student1);  
    }  
}