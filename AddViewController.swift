//
//  AddViewController.swift
//  TodoTab
//
//  Created by iosdev on 2/09/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var addText: UITextField!
    
    @IBAction func addButton(_ sender: AnyObject) {

            temp.append(addText.text!)
        
        addText.text = ""
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MM yyyy - HH:mm"
        let result = formatter.string(from: date)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
