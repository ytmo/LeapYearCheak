//
//  MAIN.cpp
//  Leap Year Cheak
//  C++ Version WITH auto
//
//  Created by Toms Project on 2020/6/7.
//  Copyright © 2020 Toms Project. All rights reserved.
//

#include <iostream>
//#include <cstdlib>                                 //for using SYSTEM

using namespace std;                               //Using namespace as std

int main()
{
    auto year = 0;                                 //auto MUST have a init number
    cout<<"Please input a year, and I'll check is that a leap year!!!"<<endl;
    cin>>year;                                     //input the year we want to check
    if(year%4==0 && year%100!=0 || year%400==0)    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
    {
        cout<<year<<" is a leap year!"<<endl;
    }
    else
    {
        cout<<year<<" is not a leap year!"<<endl;
    }
    //system("pause");                              //to see result clearly
    return 0;
}
