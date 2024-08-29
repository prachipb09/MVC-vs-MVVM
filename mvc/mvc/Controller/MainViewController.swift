//
//  MainViewController.swift
//  mvc
//
//  Created by Prachi Bharadwaj on 25/08/24.
//

import UIKit

class MainViewController: UIViewController {
    
    var model = UserModel(name: "")
    
    @IBOutlet weak var userDetail: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func saveButton(_ sender: UIButton) {
        if textField.hasText {//model updating
            model.name = textField.text ?? ""
                // talking view
            updateLabel()
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func updateLabel() {
        Task {//bussiness logic
            try? await Task.sleep(nanoseconds: 3_000_000_000)
            if !model.name.isEmpty {
                userDetail.text = "Hello," + model.name
            }
        }
    }
}


