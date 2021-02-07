//
//  main.m
//  LeapYearCheak
//
//  Created by Toms Project on 2020/6/13.
//  Copyright © 2021 Toms Project. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    printf("Please input a year, and I'll check is that a leap year!!! \n");
    int year = 0;
    scanf("%d", &year);            //input the year we want to check
    if(year % 4 == 0 && year % 100 != 0)    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
    {
        printf("%d is a leap year! \n", year);
    }
    else if (year % 400 == 0)
    {
        printf("%d is a leap year! \n", year);
    }
    else
    {
       printf("%d is not a leap year! \n", year);
    }
    return 0;
}

