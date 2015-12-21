//
//  ViewControllerDetail.swift
//  SplitViewController
//
//  Created by VyNV on 12/18/15.
//  Copyright © 2015 VyNV. All rights reserved.
//

import UIKit

class ViewControllerDetail: UIViewController, ViewControllerMasterDelegate{

    convenience init(){
        self.init(nibName: "ViewControllerDetail", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func send(someMessage: NSString) {
        print(someMessage);
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
