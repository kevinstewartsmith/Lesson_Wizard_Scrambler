//
//  ViewController.swift
//  Lesson_Wizard_Scrambler
//
//  Created by Kevin Smith on 11/16/19.
//  Copyright © 2019 Kevin Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var textBoxText: String?
    var wordArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func scrambleButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "moveToScrambledView", sender: self)
    }
    
    @IBOutlet weak var wordsOnDisplay: UITextView!
    
    @IBAction func addWordButtonPRessed(_ sender: Any) {
        wordArray.append(textBox.text ?? "")
        print(wordArray)
        let newDisplay = updateDisplayData()
        print("newDisplay: \(newDisplay)")
        wordsOnDisplay.text = newDisplay
        
    
        textBox.text = ""
    }
    
    @IBOutlet weak var textBox: UITextField!
    
    func updateDisplayData() -> String {
        var rtnString: String = ""
        for i in wordArray {
            rtnString = "\(rtnString) \n\(i)"
            
            print("yo: \(rtnString)")
            
        }
        
        return rtnString
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "moveToScrambledView"{
            let destinationVC = segue.destination as! SecondVC
            
            //destinationVC.textPassedOver = textField.text!
        }
    
    

}

