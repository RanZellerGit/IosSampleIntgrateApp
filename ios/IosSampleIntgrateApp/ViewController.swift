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
        startReact()
    }
    override func viewDidAppear(_ animated: Bool) {

    }
    
    func startReact() {
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "IosSampleIntgrateApp",
            initialProperties:nil,
            launchOptions: nil)
        rootView?.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.view.addSubview(rootView!)
    }

    @IBAction func startReactNativeView(_ sender: Any) {
        EventSenderManager.sendEvent()
    }
    
}



