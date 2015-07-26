//
//  InformationViewController.swift
//  nineSecond
//
//  Created by 朱勋杰 on 15/7/25.
//  Copyright (c) 2015年 朱勋杰. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet var nameField: UITextField!
    
    @IBOutlet var selectButton: UIButton!

    @IBOutlet var saveButton: UIButton!
    @IBOutlet var image: UIImageView!
    @IBOutlet var location: UITextField!
    var locationlist:NSMutableArray=["eggs","milk","fruit"]
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

}
