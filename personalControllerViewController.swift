//
//  personalControllerViewController.swift
//  nineSecond
//
//  Created by 朱勋杰 on 15/7/17.
//  Copyright (c) 2015年 朱勋杰. All rights reserved.
//

import UIKit

class personalControllerViewController: UITableViewController {
    let textcellIdentifier=["personal","text","moretext"]
    
    let columns1=["用户昵称","手机号"]
    let columns2=["我的积分","我的发布","我的订单","意见建议","关于i生活"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        var height:CGFloat
        switch(indexPath.row){
        case 0:
            height=80.0
        default:
            height=50.0
            
        }
        return height
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    override func tableView(tableView:UITableView, numberOfRowsInSection section:Int)->Int{
        return columns1.count+columns2.count-1
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
override     
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell
        switch (indexPath.row){
        case 0:
         cell=tableView.dequeueReusableCellWithIdentifier(textcellIdentifier[1], forIndexPath: indexPath) as! UITableViewCell
            cell.textLabel?.text=columns1[indexPath.row]
            cell.detailTextLabel?.text=columns1[indexPath.row+1]
        
            
        default:
            cell=tableView.dequeueReusableCellWithIdentifier(textcellIdentifier[2], forIndexPath: indexPath) as! UITableViewCell
            cell.textLabel?.text=columns2[indexPath.row-1]
            
        
        }
        return cell
    }
    

    

}
