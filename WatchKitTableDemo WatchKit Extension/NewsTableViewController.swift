//
//  NewsTableViewController.swift
//  WatchKitTableDemo
//
//  Created by Dmitry on 1/27/15.
//  Copyright (c) 2015 NatashaTheRobot. All rights reserved.
//

import WatchKit

class NewsTableViewController: WKInterfaceController {
    @IBOutlet weak var table:WKInterfaceTable!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context);
        
        fillTableView();
    }
    
    func fillTableView() {
//        self.table.setNumberOfRows(4, withRowType: "newsrow");
//        
//        for i in 0..<4 {
//            let row = self.table.rowControllerAtIndex(i) as NewsRow;
//            row.contentLabel?.setText("You can create an embedded.")
//        }
    }
    
    
    @IBAction func addToBriefcase() {
        
    }
    
    @IBAction func openInIphone() {
        
    }
    
    @IBAction func cancel() {
        
    }
}