//
//  TestingViewController.swift
//  Finance Manager
//
//  Created by Sriteja Chilakamarri on 20/12/16.
//  Copyright © 2016 Sriteja Chilakamarri. All rights reserved.
//

import UIKit
import TesseractOCR







class TestingViewController: UIViewController,G8TesseractDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.hideKeyboardWhenTappedAround()
        
        if let tesseract = G8Tesseract(language: "eng") {
            tesseract.delegate = self
            tesseract.image = UIImage(named: "bill2.png")?.g8_blackAndWhite()
            tesseract.recognize()
            
            let str:String = tesseract.recognizedText
            
        }
                }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
