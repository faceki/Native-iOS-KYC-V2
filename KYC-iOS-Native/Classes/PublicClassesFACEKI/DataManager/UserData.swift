//
//  UserData.swift
//
//

import Foundation
var numberOfScannedDoc = Int()

class UserData {
    
    func parseUserData(responseDict: [String: Any]) {
        
        DataManager.userId = responseDict["_id"] as? String ?? "0"
        DataManager.clientId = responseDict["client_id"] as? String ?? "NA"
        DataManager.confidence = responseDict["confidence"] as? Double ?? 0.0
        DataManager.clientSecret = responseDict["clientSecret"] as? String ?? "NA"
        DataManager.faceId = responseDict["face_id"] as? String ?? "NA"
        DataManager.imageId = responseDict["image_id"] as? String ?? "NA"
        DataManager.mobileNumber = responseDict["mobile_number"] as? String ?? "998989898"
        DataManager.name = responseDict["name"] as? String ?? "Test User"
    }
    
    func parseSDKsettingsData(responseDict: [String: Any]) {
        
        
        let declined = responseDict["declined"] as? Dictionary ?? [:]
        let invalid = responseDict["invalid"] as? Dictionary ?? [:]
        let success = responseDict["success"] as? Dictionary ?? [:]
        let allowedKycDocuments = responseDict["allowedKycDocuments"] as? [String] ?? []
        DataManager.declinedMessage = declined["message"] as? String ?? "Please visit our branch office."
        DataManager.invalidMeaasge = invalid["message"] as? String ?? "Opps! your card expired"
        DataManager.successMeaasge = success["message"] as? String ?? "Process is complete check dashboard for details."
        DataManager.declinedRedirectUrl = declined["redirect_url"] as? String ?? "www.faceki2.com"
        DataManager.invalidRedirectUrl = invalid["redirect_url"] as? String ?? "www.faceki3.com"
        DataManager.successRedirectUrl = success["redirect_url"] as? String ?? "www.faceki1.com"
       
        for i in (0 ..< allowedKycDocuments.count) {
            switch(i){
            case 0:
                DataManager.docTypeOne = allowedKycDocuments[i]
                break
            case 1:
                DataManager.docTypeTwo = allowedKycDocuments[i]
                break
            case 2:
                DataManager.docTypeThree = allowedKycDocuments[i]
                break
            default:
                break
            }
        }
        DataManager.numberOfDoc = allowedKycDocuments.count
       
        
    }
    
}

