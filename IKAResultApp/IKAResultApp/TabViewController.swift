//
//  ResultViewController.swift
//  IKAResultApp
//
//  Created by Apple on 2019/01/02.
//  Copyright © 2019年 Baminami. All rights reserved.
//


import UIKit

final class TabViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = ResultViewController()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        let nv = UINavigationController(rootViewController: vc)
        //        let vc2 = Nav2ViewController()
        //        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        //        let nv2 = UINavigationController(rootViewController: vc2)
        //        setViewControllers([nv, nv2], animated: false)
        setViewControllers([nv], animated: false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
