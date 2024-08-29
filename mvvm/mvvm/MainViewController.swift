//
//  MainViewController.swift
//  mvc
//
//  Created by Prachi Bharadwaj on 25/08/24.
//

import UIKit

class MainViewController: UIViewController {
    //view is talking viewmodel
    let viewModel = ViewModel()
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var userDetail: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func saveButton(_ sender: UIButton) {
        if textField.hasText {
            Task {
                 try? await viewModel.updateLabel(name: textField.text ?? "" , callback: { name, error in
                    if error == nil {
                        DispatchQueue.main.async {
                            self.label.text = name
                        }
                    }
                })
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


