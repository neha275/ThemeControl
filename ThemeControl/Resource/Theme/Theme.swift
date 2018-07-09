//
//  Theme.swift
//  ThemeControl
//
//  Created by Neha Gupta on 29/06/18.
//  Copyright © 2018 Neha Gupta. All rights reserved.
//

import UIKit

class Theme {
    static var currentTheme: ThemeProtocol {
        get {
            if getThemeValue() {
                return LightTheme()
            }else {
                return DarkTheme()
            }
        }
    }
    
    static func setThemeValue(isLightTheme:Bool) {
        let objNSUserDefaults = UserDefaults.standard
        objNSUserDefaults.setValue(isLightTheme, forKey: ThemeValue.selectedTheme.rawValue)
        objNSUserDefaults.synchronize()
    }
    
    static func getThemeValue() -> Bool {
        let objNSUserDefaults = UserDefaults.standard
        let themeValue : Bool = true
        if let id = objNSUserDefaults.value(forKey: ThemeValue.selectedTheme.rawValue) as?  Bool {
            return  id
        }
        return themeValue
    }
}

enum ThemeValue:String {
    case selectedTheme = "themeValue"
}
