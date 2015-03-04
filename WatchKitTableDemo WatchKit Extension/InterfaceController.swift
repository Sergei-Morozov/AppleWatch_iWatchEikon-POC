//
//  InterfaceController.swift
//  WatchKitTableDemo WatchKit Extension
import WatchKit

class InterfaceController: WKInterfaceController {
    

    
    @IBOutlet weak var menuTable: WKInterfaceTable!
    
    let menu = MenuDataSource().menu
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        loadTableData()
    }
    
    private func loadTableData() {
        
        menuTable.setNumberOfRows(menu.count, withRowType: "MenuTableRowController")
        
        for (index, menuName) in enumerate(menu) {
            
            let row = menuTable.rowControllerAtIndex(index) as! MenuTableRowController
            
            row.interfaceLabel.setText(menuName)
            
        }
        
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
    {
        if(rowIndex == 0){
            
        }
        let menuName = menu[rowIndex]
        return menuName
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
