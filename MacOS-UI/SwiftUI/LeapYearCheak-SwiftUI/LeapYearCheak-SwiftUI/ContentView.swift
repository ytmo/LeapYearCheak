//
//  ContentView.swift
//  LeapYearCheak-SwiftUI
//
//  Created by Toms Project on 2020/6/19.
//  Copyright © 2020 Toms Project. All rights reserved.
//var year = Int($text)

import SwiftUI

struct ContentView: View {
    @State private var text = "0"
    //@State private var tmp = ""
    var body: some View {
        VStack {
            Text("LeapYearCheak For MacOS")
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            .position(x: 450, y: 26)
            Text("Please input a year, and I'll check is that a leap year!!!")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .position(x: 450, y: -170)
            TextField("Input a year here",text: $text)
            .position(x: -150, y: -330)
            .frame(width: 150, height: 26)
            Button("Click Me", action: {
                let year = Int(self.text)
                //let te = TextField("Result Here", text: self.$tmp)
                if(year! % 4 == 0 && year! % 100 != 0)    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
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
            })
            //.position(x: 300, y: 10)

        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
