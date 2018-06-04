//
//  ViewController.swift
//  SideMenu
//
//  Created by hSenid on 5/31/18.
//  Copyright © 2018 hSenid. All rights reserved.
//  In here side menu options with the Notification center is commented out

import UIKit

class HomeViewController: UIViewController,SideMenuDelegate {

    @IBOutlet weak var sideMenuConstraint : NSLayoutConstraint!
    var sideMenuOpen = false

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
//        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // create a reference of Class and bind them through the prepareforsegue method
        if let nav = segue.destination as? UINavigationController, let mainViewController = nav.topViewController as? MainViewController {
            mainViewController.delegate = self
        }
    }
//    @objc func toggleSideMenu(){
//        if sideMenuOpen {
//            sideMenuConstraint.constant = -240
//            sideMenuOpen = false}
//        else{
//            sideMenuConstraint.constant = 0
//            sideMenuOpen = true}
//        
//        UIView.animate(withDuration: 0.3){
//            self.view.layoutIfNeeded()
//        }
//    }
    

    func toggleSidePannel() {
                if sideMenuOpen {
                    sideMenuConstraint.constant = -240
                    sideMenuOpen = false}
                else{
                    sideMenuConstraint.constant = 0
                    sideMenuOpen = true}
        
                UIView.animate(withDuration: 0.3){
                    self.view.layoutIfNeeded()
                }
    }
}

