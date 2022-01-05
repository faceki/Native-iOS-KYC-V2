//
//  ViewController.swift
//  KYC-iOS-Native
//
//  Created by faceki on 01/04/2022.
//  Copyright (c) 2022 faceki. All rights reserved.
//

import UIKit
import KYC_iOS_Native

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func captueACtion(_ sender: Any) {
//        let smManagerVC = Logger.initiateSMSDK()
        let smManagerVC = Logger.initiateSMSDK(setClientID : "af7d4790-04a9-11ec-aecf-1dca4d5eaaf0", userEmail: "demo@faceki.com")
        navigationController?.pushViewController(smManagerVC, animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

