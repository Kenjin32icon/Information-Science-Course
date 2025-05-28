package Encalpsulation;  
  
public class StudentDetails {  
    public static void main(String[] args0){  
        StudentTUK student1 = new StudentTUK("Kevin", "kevin@gmail.com", 12345, "IT", 2025);  
  
        System.out.println(student1.getName());  
        System.out.println(student1.getEmail());  
        System.out.println(student1.getRegno());  
        System.out.println(student1.getCourse());  
        System.out.println(student1.getYear());  
  
        student1.setName("Consolata");  
        student1.setEmail("consolata.gmail.com");  
        student1.setRegno(1678);  
        student1.setCourse("Computer Science");  
        student1.setYear(2023);  
  
        System.out.println(student1.getName());  
        System.out.println(student1.getEmail());  
    }  
}