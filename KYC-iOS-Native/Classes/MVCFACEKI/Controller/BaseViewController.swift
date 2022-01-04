//
//  BaseViewController.swift
//  FaceKi
//
//  Created by Logictrix on 06/12/21.
//

import UIKit
import SwiftyGif

class BaseViewController: UIViewController {
    
    //    let blurVw = UIView()
        let blurVw = UIImageView()
        let radarGifVw = UIView()
        var imageview = UIImageView()
        var gif = UIImage()

        override func viewDidLoad() {
            super.viewDidLoad()
            blurVw.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
    //        blurVw.backgroundColor = UIColor.black.withAlphaComponent(0.45)
            let imgBack = UIImage(named: "VerifyBlurBack", in: resourcesBundleImg, compatibleWith: nil)
            blurVw.image = imgBack
            radarGifVw.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        }
        
        func startLoaderGif(isLoaderStart: Bool){
            if isLoaderStart == true {
                self.view.addSubview(blurVw)
                        
                DispatchQueue.main.async {
                    let VeryfyImg = UIImage(named: "VeryfyImg", in: resourcesBundleImg, compatibleWith: nil)
                    self.imageview.image = VeryfyImg
        
                    self.imageview.frame = CGRect(x: self.radarGifVw.bounds.size.width/2-100, y: self.radarGifVw.bounds.size.height/2-40, width: 200, height: 80)
                    self.radarGifVw.addSubview(self.imageview)
                    self.view.addSubview(self.radarGifVw)
                }
            }
            else {
                self.imageview.removeFromSuperview()
                radarGifVw.removeFromSuperview()
                blurVw.removeFromSuperview()
            }
        }
      
    }
