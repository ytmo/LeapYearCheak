//
//  main.cpp
//  Leap Year Cheak
//  C++ Version
//
//  Created by Toms Project on 2020/6/7.
//  Copyright © 2020 Toms Project. All rights reserved.
//

#include <iostream>
#include <string>
//#include <cstdlib>                                 //for using SYSTEM

constexpr auto VERSION = "Beta v2.0.0-1-cmd ";

using namespace std;                               //Using namespace as std

int main(int argc, const char * argv[])
{
    char buf[500];
    string aaa;
    sprintf(buf, argv[1]);
    aaa = buf;
    if (aaa == "-h" || aaa == "-help" || aaa == "--h" || aaa == "--help")
    {
        cout<<"Welcomde━(*｀∀´*)ノ亻!"<<endl<<"This LeapYearCheak(lyc) is write by Toms Project!!"<<endl<<"Thank to c++ STL lib for help to build this!!!Version: "<<endl<<VERSION<<endl<<"Useage："<<endl<<"lyc -h   See the help"<<endl<<"lyc -v   See the version"<<endl<<"lyc -c YEAR   Check if a year is or not a leap year"<<endl;
        
    }
    else if (aaa == "-v" || aaa == "-version" || aaa == "--v" || aaa == "--version")
    {
        cout<<"LeapYearCheak(lyc) Version: "<<endl<<VERSION<<endl;
    }
    else if (aaa == "-s" || aaa == "-suan" || aaa == "--s" || aaa == "--suan")
    {
        sprintf(buf, argv[2]);
        auto year = atoll(buf);//input the year we want to check
        if(year % 4 == 0 && year % 100 != 0)    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
        {
            cout << "true" << endl;
        }
        else if (year % 400 == 0)
        {
            cout "true" << endl;
        }
        else
        {
            cout << "false" << endl;
        }
    }
    else
    {
        cerr<<"Err!!!Please use -h to see how to use me right!!!"<<endl;
    }                                
    //system("pause");                              //to see result clearly
    return 0;
}
