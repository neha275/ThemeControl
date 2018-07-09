//
//  ViewController.swift
//  ThemeControl
//
//  Created by Neha Gupta on 29/06/18.
//  Copyright © 2018 Neha Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblList:UITableView!
    let cityName:[String] = ["New Delhi", "Mumbai","Pune"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Theme.currentTheme.background
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = Theme.currentTheme.background
        tblList.reloadData()
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoTableViewCell", for: indexPath) as! InfoTableViewCell
        cell.titleLabel.text = cityName[indexPath.row]
        cell.cardView.layer.cornerRadius = 4
        cell.cardView.layer.masksToBounds = true
        cell.cardView.backgroundColor = Theme.currentTheme.accent
        cell.titleLabel.textColor = Theme.currentTheme.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
