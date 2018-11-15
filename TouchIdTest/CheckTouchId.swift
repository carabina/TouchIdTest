//
//  CheckTouchId.swift
//  Touch Id Demo
//
//  Created by dev on 11/9/18.
//  Copyright © 2018 iOS Training. All rights reserved.
//

import Foundation
import LocalAuthentication
@objc open class CheckTouchId :NSObject {
   public var message: String = ""

  @objc public func tapTouchId(_ userID:String? ,reply: @escaping(Bool,Error?) -> Swift.Void) {
        let context = LAContext()
        guard context.canEvaluatePolicy(.deviceOwnerAuthentication, error: nil) else {
            return
        }
        guard let user_ID = userID else {return}
        context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: user_ID) {  (success, error) in
            if success {
                reply(success, error)
                
            } else {
                reply(success, error)
                
            }
            
        }
    }
   public func showError(error: LAError) {
        switch error.code {
        case LAError.authenticationFailed:
            message = "Authentication was not successful because the user failed to provide valid credentials. Please enter password to login."
            break
        case LAError.userCancel:
            message = "Authentication was canceled by the user"
            break
        case LAError.userFallback:
            message = "Authentication was canceled because the user tapped the fallback button"
            break
        case LAError.touchIDNotEnrolled:
            message = "Authentication could not start because Touch ID has no enrolled fingers."
            break
        case LAError.passcodeNotSet:
            message = "Passcode is not set on the device."
            break
        case LAError.systemCancel:
            message = "Authentication was canceled by system"
            break
        default:
            message = error.localizedDescription
            break
        }
    }

}
