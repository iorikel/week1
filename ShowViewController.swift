//
//  ShowViewController.swift
//  TodoTab
//
//  Created by iosdev on 2/09/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit
var temp: [String] = []

class ShowViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var pass: String = ""
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        let storage = UserDefaults.standard.object(forKey: "data")
        if let items = storage as? Array<String> {
            temp = items
        }
        table.reloadData()
        
        if temp != []{
            label2.isHidden=true
            
        }else{
            label2.isHidden=false
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return temp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.listLabel.text = temp[indexPath.row]
    
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        pass = temp[indexPath.row]
        performSegue(withIdentifier: "nextSegue", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as! NextViewController
        next.temp = pass
        }
    }
