//
//  ViewController.swift
//  Swift Singleton Design Pattern
//
//  Created by Andrew Jaffee on 7/14/18.
//
/*
 
 Copyright (c) 2017-2018 Andrew L. Jaffee, microIT Infrastructure, LLC, and
 iosbrain.com.
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 
*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordVisibleSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if UserPreferences.shared.isPasswordVisible() {
            passwordVisibleSwitch.isOn = true
            passwordTextField.isSecureTextEntry = false
        }
        else {
            passwordVisibleSwitch.isOn = false
            passwordTextField.isSecureTextEntry = true
        }
        
    } // end func viewDidLoad

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func passwordVisibleSwitched(_ sender: Any) {
        
        let pwdSwitch:UISwitch = sender as! UISwitch
        
        if pwdSwitch.isOn {
            passwordTextField.isSecureTextEntry = false
            UserPreferences.shared.setPasswordVisibity(true)
        }
        else {
            passwordTextField.isSecureTextEntry = true
            UserPreferences.shared.setPasswordVisibity(false)
        }
        
    } // end func passwordVisibleSwitched
    
} // end class ViewController

