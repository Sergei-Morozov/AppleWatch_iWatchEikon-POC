//
//  MenuInterfaceController.swift
//  WatchKitTableDemo
//
//  Created by Lert on 1/22/15.
//  Copyright (c) 2015 NatashaTheRobot. All rights reserved.
//

import WatchKit

class MenuInterfaceController: WKInterfaceController {
    
    override func handleActionWithIdentifier(identifier: String?,
        forRemoteNotification remoteNotification: [NSObject : AnyObject]) {
            
            if let notificationIdentifier = identifier {
                
                if notificationIdentifier == "readNewsText" {
                    self.pushControllerWithName("readFullText", context:nil);
                }else if notificationIdentifier == "replyMessenger" {
                    self.pushControllerWithName("messengerSelect", context:nil);
                }
            }
    }
    
    
    @IBAction func SettingsTriggered() {
        self.pushControllerWithName("settingsScreen", context:nil);

    }
    
    override init(context: AnyObject?) {
        super.init(context: context)
        
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
