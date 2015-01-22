//
//  MessengeSentController.swift
//  WatchKitTableDemo
//
//  Created by Lert on 1/12/15.
//  Copyright (c) 2015 NatashaTheRobot. All rights reserved.
//


import WatchKit


class MessengerSentController: WKInterfaceController {
    
    override init(context: AnyObject?) {
        super.init(context: context)
        
    }
    
    
    @IBAction func OnPressed() {
        exit(0);
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }
    
}
