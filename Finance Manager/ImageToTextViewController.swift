//
//  TestViewController.swift
//  Finance Manager
//
//  Created by Sriteja Chilakamarri on 20/12/16.
//  Copyright © 2016 Sriteja Chilakamarri. All rights reserved.
//

import UIKit
import Foundation
import TesseractOCR


    


class ImageToTextViewController: UIViewController,G8TesseractDelegate {
    
   
    
    
   
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()

        if let tesseract = G8Tesseract(language: "eng") {
            tesseract.delegate = self
            tesseract.image = UIImage(named: "bill2.png")?.g8_blackAndWhite()
            tesseract.recognize()
            
            var str:String = tesseract.recognizedText
    
           
            var strNew:String = ""
            
            
           
      
            
    
        
            
     if ((str.range(of: "Total")) != nil){
         
         let keyWord =  str.range(of: "Total")
            
            let wordUpperBound = keyWord?.upperBound
            
             strNew = str.substring(from: wordUpperBound!)
         
         }
            
            var test = strNew.components(separatedBy: .letters).joined(separator: ",")
            
            print("Teja123 \(test)")
            
            
            
            var symboRemover = test.components(separatedBy: .symbols).joined(separator: " ")
            
            print("Teja123 \(symboRemover)")
            
            var punchuationRemover = symboRemover.components(separatedBy: ":").joined(separator: "")
            
            var nlRemover = punchuationRemover.components(separatedBy: "\n").joined(separator: "")
            
            
            var spaceRemover = nlRemover.components(separatedBy: " ")
            
            
            
            
            print("Teja123 \(spaceRemover)")
            print("Teja123 \(nlRemover)")
            
            var larg:Float = 0
            var curr:Float = 0
            
            for var i in 0..<spaceRemover.count{
            
                var num = Float(spaceRemover[i])
                if num != nil {
                    
                    curr = num!
                    
                    if(curr > larg){
                    
                    larg = curr
                    
                    }
                
                
                }
                else {
                    print("Not Valid Integer")
                }
            
            }
         
         print("Kichu95 \(larg)")
            
            textField.text = "\(larg)"
         
        
            
        
        }
            
            
        
            




    
            


 
        
        
        
        
        
        
    func progressImageRecognition(for tesseract: G8Tesseract!) {
        
        print("Recognition Progress \(tesseract.progress) %")
        
        }
        
}
 
    @IBOutlet weak var clickedButton: UIButton!

    @IBAction func buttonPressed(_ sender: AnyObject) {
        
    /*
       // keyString = textView.text
        
        let keyWord =  textView.text.range(of:"Pay")
        
        let wordUpperBound = keyWord?.upperBound
        
        let remainingString = textView.text.substring(from: wordUpperBound!)
        
        let StringArr = remainingString.characters.split{$0 == " "}.map(String.init)
        
        
        var CurrentNum = [Float]()
         
        var num  = [Float]()
        
        var currentNumber :Float = 0
        
        
        
        print("Teja2 \(StringArr.count)")
        
        for var i in 0..<StringArr.count{
            
            print("abcdef \(StringArr[i])")
            
            num = [Float(StringArr[i])!]
            
            print(num)
            
            if num != nil {
                
                print("Teja \(num)")
                
                CurrentNum = num
                
                if(CurrentNum[0] > CurrentNum[1]){
                    
                    CurrentNum[1] = CurrentNum[0]
                    
                    
                    
                }
                
                
                
            }
            else {
                print("Not Valid Integer")
            }
        }
        
        print("Kichu \(CurrentNum[1])")
        
       */
        
    
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
}


