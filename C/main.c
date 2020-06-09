//
//  main.c
//  Leap Year Cheak
//  C Version
//
//  Created by Toms Project on 2020/6/7.
//  Copyright © 2020 Toms Project. All rights reserved.
//

#include <stdio.h>
#include <math.h>
//#include <stdlib.h>                                 //for using SYSTEM
char VERSION = 'Beta v2.0.0-1-cmd ';

int main(int argc, const char * argv[])
{
    char buf[500];
    char chose;
    sprintf(buf, argv[1]);
    chose = buf;
    if (chose == '-h' || chose == '-help' || chose == '--h' || chose == '--help')
    {
        printf("Welcomde━(*｀∀´*)ノ亻!\n");
        printf("This LeapYearCheak(lyc) is write by Toms Project!!\n");
        printf("Version: %c \n", VERSION);
        printf("Useage：\n");
        printf("lyc -h   See the help\n");
        printf("lyc -v   See the version\n");
        printf("lyc -c YEAR   Check if a year is or not a leap year\n");
        
    }
    else if (chose == '-v' || chose == '-version' || chose == '--v' || chose == '--version')
    {
        printf("LeapYearCheak(lyc) Version: %c \n", VERSION);
    }
    else if (chose == '-s' || chose == '-suan' || chose == '--s' || chose == '--suan')
    {
        sprintf(buf, argv[2]);
        int year = atoi(buf);//input the year we want to check
        if(year % 4 == 0 && year % 100 != 0)    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
        {
            printf("true\n");
        }
        else if (year % 400 == 0)
        {
            printf("true\n");
        }
        else
        {
            printf("false\n");
        }
    }
    else
    {
        printf("Err!!!Please use 'lyc -h' to see how to use me right!!!\n");
    }
    //system("pause");                              //to see result clearly
    return 0;
}
