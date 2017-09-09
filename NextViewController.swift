//
//  NextViewController.swift
//  TodoTab
//
//  Created by iosdev on 2/09/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    var temp = ""
    @IBOutlet weak var nextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nextLabel.text = temp
    }

    @IBAction func backButton(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
