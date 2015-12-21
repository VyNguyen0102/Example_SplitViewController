//
//  ViewControllerMaster.swift
//  SplitViewController
//
//  Created by VyNV on 12/18/15.
//  Copyright © 2015 VyNV. All rights reserved.
//

import UIKit

protocol ViewControllerMasterDelegate: class {
    func send(someMessage: NSString)
}

class ViewControllerMaster: UIViewController {
    var delegate: ViewControllerMasterDelegate?
    
    convenience init(){
        self.init(nibName: "ViewControllerMaster", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let barButtonItem = UIBarButtonItem.init(title: "Meo meo ", style: UIBarButtonItemStyle.Done, target: nil, action: nil)
        self.navigationItem.leftBarButtonItem = barButtonItem
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClick(sender: AnyObject) {

        splitViewController?.preferredDisplayMode = UISplitViewControllerDisplayMode.AllVisible
                splitViewController?.preferredDisplayMode = UISplitViewControllerDisplayMode.PrimaryOverlay
        splitViewController?.displayModeButtonItem().action
        if let detailViewController = self.delegate as? ViewControllerDetail {
            self.delegate?.send("This message send from master view")
            splitViewController?.showDetailViewController(detailViewController.navigationController!, sender: nil)
        }
        
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
