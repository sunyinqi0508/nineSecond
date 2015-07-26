//
//  personalViewController.swift
//  nineSecond
//
//  Created by 朱勋杰 on 15/7/26.
//  Copyright (c) 2015年 朱勋杰. All rights reserved.
//

import UIKit

class personalViewController: UITableViewController {
    
    
    let segueArray=["login","information","credit","reply","order","advice"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
       return  7
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       
        switch(indexPath.row){
        case 0:
            self.performSegueWithIdentifier(segueArray[indexPath.row], sender: self)
        case 5:
                let a=1
        case 6:
                let b=1
            
        default:
            self.performSegueWithIdentifier(segueArray[indexPath.row+1], sender: self)
            println(index)
        }
    }
}
