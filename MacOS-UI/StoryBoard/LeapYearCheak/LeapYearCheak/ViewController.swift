//
//  ViewController.swift
//  LeapYearCheak
//
//  Created by Toms Project on 2020/6/26.
//  Copyright © 2020 Toms Project. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func checkLeapYear(_ sender: NSButton) {
        if Year.stringValue == "" || Year.stringValue == nil
        {
            let alert:NSAlert = NSAlert()
            alert.messageText = "Please input a right year(Not nil)!!!"
            alert.addButton(withTitle: "OK")
            //alert.alertStyle = NSAlert.Style.CriticalAlertStyle
            alert.runModal()
            Result.textColor = NSColor.red
            Result.stringValue = "Error"
        }
        else
        {
            let year = Int(Year.stringValue)!
            Result.textColor = NSColor.green
            //we learned from math that if a year remainder 4 equals 0 and that year remainder 100 don't equals 0 or the year remainder 400 equals 0, than the year must be a leap year
            if year % 4 == 0 && year % 100 != 0
            {
                Result.stringValue = String(year) + " is a leap year!"
            }
            else if year % 400 == 0
            {
                Result.stringValue = String(year) + " is a leap year!"
            }
            else
            {
                Result.textColor = NSColor.red
                Result.stringValue = String(year) + " is not a leap year!"
            }
        }
    }
    @IBOutlet weak var Year: NSTextField!
    @IBOutlet weak var Result: NSTextField!
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

