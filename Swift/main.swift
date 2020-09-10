//
//  main.swift
//  LeapYearCheak
//
//  Created by Toms Project on 2020/6/14.
//  Copyright © 2020 Toms Project. All rights reserved.
//
import Foundation     //for print and input

print("Please input a year, and I'll check is that a leap year!!!")
let year = Int(readLine()!)
//we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
if(year! % 4 == 0 && year! % 100 != 0)    
{
	print(String(year!) + " is a leap year!")
}
else if (year! % 400 == 0)
{
    print(String(year!) + " is a leap year!")
}
else
{
    print(String(year!) + " is not a leap year!")
}
    


