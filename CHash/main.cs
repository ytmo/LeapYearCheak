using System;

public class LeapYearCheak{
    private static void Main(){
        Console.WriteLine("Please input a year, and I'll check is that a leap year!!!");
        int year = int.Parse(Console.ReadLine());
        if(year % 4 == 0 && year % 100 != 0)    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
    	{
        	Console.WriteLine(year + " is a leap year!");
    	}
    	else if (year % 400 == 0)
    	{
    	    Console.WriteLine(year + " is a leap year!");
    	}
    	else
    	{
    	    Console.WriteLine(year + " is not a leap year!");
    	}
    }
}
    
