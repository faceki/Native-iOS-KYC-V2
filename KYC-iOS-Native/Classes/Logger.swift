//
//  Logger.swift
//  MyCocoaPodLibraryBps
//
//  Created by Logictrix on 30/12/21.
//

import Foundation
import UIKit

public class Logger {
        
    func privateMethod(){
        print("Private")
    }
    
    public static func initiateSMSDK(setClientID : String, clientSecretval: String) -> UIViewController {
        clientId = setClientID
        clientSecret = clientSecretval
        let VC = Storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        VC.modalTransitionStyle = .crossDissolve
        VC.modalPresentationStyle = .overCurrentContext
//        VC.paramsSet = params
//        VC.delegateSm = delegate
        
        return VC
    }
    
}
