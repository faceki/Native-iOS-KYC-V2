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
        let smManagerVC = Logger.initiateSMSDK(setClientID : "2uv4k940iq673msva01k76bcl9", clientSecretval: "1g62tosia3rfck633go4pp4avt8qfm5on3ga1e7dgv6vlfh4svad")
        navigationController?.pushViewController(smManagerVC, animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
