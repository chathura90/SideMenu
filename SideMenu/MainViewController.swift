//
//  MainViewController.swift
//  SideMenu
//
//  Created by hSenid on 5/31/18.
//  Copyright © 2018 hSenid. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    //defining the delegate property
     var delegate: SideMenuDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onHambugerButtonClick(){
//        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        //delegate method call
        self.delegate?.toggleSidePannel()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
