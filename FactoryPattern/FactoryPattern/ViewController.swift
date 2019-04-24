//
//  ViewController.swift
//  FactoryPattern
//
//  Created by SOTSYS202 on 08/03/19.
//  Copyright © 2019 SOTSYS202. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBAction func drawCircle(_ sender: Any) {
        
        // just draw the shape
        createShape(.circle, on: view)
        
    }
    
    @IBAction func drawSquare(_ sender: Any) {
        
        // just draw the shape
        createShape(.square, on: view)
        
    }
    
    @IBAction func drawRectangle(_ sender: Any) {
        
        // actually get an object from the factory
        // and use it to draw the shape
        let rectangle = getShape(.rectangle, on: view)
        rectangle.display()
        
    }

}

