//
//  CustomTabBarViewController.swift
//  CustomTabBar
//
//  Created by Victor Chee on 2018/12/20.
//  Copyright © 2018 VictorChee. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UITabBarController {
    @IBOutlet var customTabBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tabBar.addSubview(customTabBar)
        customTabBar.translatesAutoresizingMaskIntoConstraints = false
        self.tabBar.leftAnchor.constraint(equalTo: customTabBar.leftAnchor).isActive = true
        self.tabBar.rightAnchor.constraint(equalTo: customTabBar.rightAnchor).isActive = true
        self.tabBar.topAnchor.constraint(equalTo: customTabBar.topAnchor).isActive = true
        self.tabBar.bottomAnchor.constraint(equalTo: customTabBar.bottomAnchor).isActive = true
    }
    
    @IBAction func customTabBarItemTapped(_ sender: UIButton) {
        self.selectedIndex = sender.tag
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
