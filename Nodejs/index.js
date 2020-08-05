//
//  index.js
//  Leap Year Cheak
//  Node.js (JavaScript) Version
//
//  Created by Toms Project on 2020/8/5.
//  Copyright © 2020 Toms Project. All rights reserved.
//
const readline = require('readline');
 
function readSyncByRl(tips) {
    tips = tips || '> ';
 
    return new Promise((resolve) => {
        const rl = readline.createInterface({
            input: process.stdin,
            output: process.stdout
        });
 
        rl.question(tips, (answer) => {
            rl.close();
            resolve(answer.trim());
        });
    });
}
 
readSyncByRl("Please input a year, and I'll check is that a leap year!!!").then((year) => {
	if(year % 4 == 0 && year % 100 != 0)    //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
    {
        console.log(year + " is a leap year!");
    }
    else if (year % 400 == 0)
    {
        console.log(year + " is a leap year!");
    }
    else
    {
        console.log(year + " is not a leap year!");
    }
});
process.exit();
    
