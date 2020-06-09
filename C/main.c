//
//  main.c
//  Leap Year Cheak
//  C Version
//
//  Created by Toms Project on 2020/6/7.
//  Copyright © 2020 Toms Project. All rights reserved.
//

#include <stdio.h>
//#include <stdlib.h>                                 //for using SYSTEM

int main(int argc, const char * argv[])
{
    int year;
    printf("Please input a year, and I'll check is that a leap year!!!\n");
    scanf("%d",&year);                             //input the year we want to check
    if(year % 4 == 0 && year % 100 != 0)    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
    {
        printf("%d is a leap year!\n",year);
    }
    else if (year % 400 == 0)
    {
        printf("%d is a leap year!\n",year);
    }
    else
    {
        printf("%d is not a leap year!\n",year);
    }
    //system("pause");                              //to see result clearly
    return 0;
}

