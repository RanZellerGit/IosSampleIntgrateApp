//
//  ViewController.swift
//  IosSampleIntgrateApp
//
//  Created by Ran Zeller on 12/05/2020.
//  Copyright © 2020 Ran Zeller. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startReactNativeView(_ sender: Any) {
        NSLog("startReactNativeView");
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "IosSampleIntgrateApp",
            initialProperties:nil,
            launchOptions: nil)
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: true, completion: nil)
    }
    
}



