//
//  SettingViewController.swift
//  ThemeControl
//
//  Created by Neha Gupta on 29/06/18.
//  Copyright © 2018 Neha Gupta. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var lblLightTheme:UILabel!
    @IBOutlet weak var switchTheme:UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyTheme()
        switchTheme.setOn(false, animated: false)
        if Theme.getThemeValue() {
            switchTheme.setOn(true, animated: false)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func themeChanged(_ sender: UISwitch) {
        if sender.isOn {
            Theme.setThemeValue(isLightTheme: true)// = true
        }else{
            Theme.setThemeValue(isLightTheme: false)// = false
        }
        applyTheme()
    }
    
    fileprivate func applyTheme() {
         view.backgroundColor = Theme.currentTheme.background
        lblLightTheme.textColor = Theme.currentTheme.accent
    }
    

}
