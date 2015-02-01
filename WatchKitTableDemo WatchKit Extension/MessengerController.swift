//
//  MessengerController.swift
//  WatchKitTableDemo
//
//  Created by Lert on 1/12/15.
//  Copyright (c) 2015 NatashaTheRobot. All rights reserved.
//

import WatchKit


class MessengerController: WKInterfaceController {
    @IBOutlet weak var tableView: WKInterfaceTable?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        fillTableView()
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
    
    func fillTableView() {
        self.tableView?.setRowTypes(["messagerow", "readedmessagerow", "messagerow", "readedmessagerow"])
//        self.tableView?.setNumberOfRows(4, withRowType: "messagerow");
//        self.tableView?.setNumberOfRows(4, withRowType: "readedmessagerow");
        
//        for i in 0 ..< 4 {
//            let row = self.tableView?.rowControllerAtIndex(i) as MessageRow;
//        }
//        
//        for i in 0 ..< 4 {
//            let row = self.tableView?.rowControllerAtIndex(i) as MessageRow;
//        }
    }
}
