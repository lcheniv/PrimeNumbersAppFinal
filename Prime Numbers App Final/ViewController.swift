//
//  ViewController.swift
//  Prime Numbers App Final
//
//  Created by Lawrence Chen on 1/29/16.
//  Copyright © 2016 Lawrence Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var numberTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        
        // Removed second ! because now we arn't forcing it - we are testing
        // if let - avoids crashes
        if let num = Int(numberTextField.text!) {
        
            var isPrime = true
        
            if(num == 1){
                isPrime = false
            }
            if(num != 1 && num != 2){
                for (var i = 2; i < num; i++) {
                    if (num % i == 0){
                        isPrime = false
                    }
                }
            }
        
            print(isPrime)
        
            if(isPrime) {
            
                resultLabel.text = "\(num) is prime!"
            
            } else {
            
                resultLabel.text = "\(num) is not prime."
            
            }
            // End of if statement
        } else {
            
            resultLabel.text = "Please enter a whole number."
            
        }
        
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

