//
//  cmd-only.cpp
//  Leap Year Cheak
//  C++ Version
//
//  Created by Toms Project on 2020/6/7.
//  Last update by Toms Project on 2021/3/14
//  Copyright © 2020 Toms Project. All rights reserved.
//

#include <iostream>
#include <string>

constexpr auto VERSION = "Beta v2.0.0-3-cmd ";

using namespace std;                               //Using namespace as std

int main(int argc, const char * argv[])
{
    char buf[500];
    string chose;
    sprintf(buf, "%s", argv[1]);
    chose = buf;
    if (chose == "-h" || chose == "-help" || chose == "--h" || chose == "--help")
    {
        cout << "Welcomde━(*｀∀´*)ノ亻!"<<endl;
        cout << "This is the LeapYearCheak(lyc), a leap year checker written by Toms Project!!"<<endl;
        cout << "Thank to C++'s Standard Template Library (STL), which provides tons of help to build this!!!" << endl;
        cout << "Version: "<<VERSION<<endl;
        cout << "Useage："<<endl;
        cout << "lyc -h                 See the help"<<endl;
        cout << "lyc -v                 See the version"<<endl;
        cout << "lyc -c [YEAR_NUMBER]   Check if a year is or not a leap year"<<endl;
        
    }
    else if (chose == "-v" || chose == "-version" || chose == "--v" || chose == "--version")
    {
        cout << "LeapYearCheak(lyc) Version: "<<VERSION<<endl;
    }
    else if (chose == "-c" || chose == "-check" || chose == "--c" || chose == "--check")
    {
        sprintf(buf, "%s", argv[2]);
        auto year = atoll(buf);//input the year we want to check
        if(year % 4 == 0 && year % 100 != 0)    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
        {
            cout << "true" << endl;
        }
        else if (year % 400 == 0)
        {
            cout << "true" << endl;
        }
        else
        {
            cout << "false" << endl;
        }
    }
    else
    {
        cerr << "Err!!! Please use 'lyc -h' to see how to use me correctly!!!" << endl;
    }
    return 0;
}
