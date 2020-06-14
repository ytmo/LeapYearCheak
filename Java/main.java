import java.util.Scanner;

public class LeapYearCheak {
    public static void main(String[] args) {
        System.out.println("Please input a year, and I'll check is that a leap year!!!");
        Scanner sc = new Scanner(System.in); 
        int year = sc.nextInt(); 
        if(year % 4 == 0 && year % 100 != 0)    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
    	{
        	System.out.println(year + " is a leap year!");
    	}
    	else if (year % 400 == 0)
    	{
    	    System.out.println(year + " is a leap year!");
    	}
    	else
    	{
    	    System.out.println(year + " is not a leap year!");
    	}
    }
}
