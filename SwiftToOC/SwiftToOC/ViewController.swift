//
//  ViewController.swift
//  SwiftToOC
//
//  Created by LC on 2017/7/21.
//  Copyright © 2017年 LC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let helper = LCHelper()
        helper.lcLog(with: "我是谁")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

