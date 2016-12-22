//
//  BasicInfoViewController.swift
//  Finance Manager
//
//  Created by Sriteja Chilakamarri on 15/12/16.
//  Copyright © 2016 Sriteja Chilakamarri. All rights reserved.
//

import UIKit



class BasicInfoViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var salaryTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        self.salaryTextField.delegate = self

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // Hide keyboard on pressing return key
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }
    

   

}
