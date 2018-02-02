//
//  AppUtility.swift
//  SwipeViews
//
//  Created by Roberto Guzman on 2/1/18.
//  Copyright © 2018 Roberto Guzman. All rights reserved.
//

import Foundation
import UIKit

struct AppUtility {
    
    static var currentOrientation = "portrait"
    
    static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
        
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            delegate.orientationLock = orientation
        }
    }
    
    /// OPTIONAL Added method to adjust lock and rotate to the desired orientation
    static func lockOrientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation:UIInterfaceOrientation) {
        
        self.lockOrientation(orientation)
        
        UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
    }
    
    static func setOrientation(orientation: String) {
        var setTo = UIInterfaceOrientation.portrait
        var setToMask = UIInterfaceOrientationMask.portrait
        if(orientation == "landscapeRight") {
            setTo = UIInterfaceOrientation.landscapeRight
            setToMask = UIInterfaceOrientationMask.landscapeRight
        } else if(orientation == "portrait") {
            setTo = UIInterfaceOrientation.portrait
            setToMask = UIInterfaceOrientationMask.portrait
        }
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            delegate.orientationLock = setToMask
        }
        currentOrientation = orientation
        UIDevice.current.setValue(setTo.rawValue, forKey: "orientation")
    }
    
    static func hapticOnce() {
        if #available(iOS 10.0, *) {
            let impact = UIImpactFeedbackGenerator()
            impact.impactOccurred()
        } else {
        }
    }
    
    static func storeUserDefault(key: String, value: String) {
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    static func storeMissingDefaultPlayback() {
        let defaults = UserDefaults.standard
        
        if defaults.string(forKey: "skipForward") == nil {
            defaults.set("\(20)", forKey: "skipForward")
        }
        if defaults.string(forKey: "skipBack") == nil {
            defaults.set("\(10)", forKey: "skipBack")
        }
        
        UserDefaults.standard.synchronize()
    }
    
    func getCurrentViewController() -> UIViewController? {
        
        if let rootController = UIApplication.shared.keyWindow?.rootViewController {
            var currentController: UIViewController! = rootController
            while( currentController.presentedViewController != nil ) {
                currentController = currentController.presentedViewController
            }
            return currentController
        }
        return nil
        
    }
    
}
