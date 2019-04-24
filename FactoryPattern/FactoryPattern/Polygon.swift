//
//  Polygon.swift
//  FactoryPattern
//
//  Created by SOTSYS202 on 08/03/19.
//  Copyright © 2019 SOTSYS202. All rights reserved.
//

import Foundation
import UIKit

class PolygonView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Polygon: HelperViewFactoryProtocol {    
    
    let height: Int
    let parentView: UIView
    var view: PolygonView
    
    init(height: Int = defaultHeight, parentView: UIView) {
        
        self.height = height
        self.parentView = parentView
        view = PolygonView()
        
    }
    
    func configure() {
        
        view.backgroundColor = defaultColor
        
    }
    
    func position() {
        
        view.center = parentView.center
        
    }
    
    func display() {
        
        configure()
        position()
        parentView.addSubview(view)
        
    }
    
} // end class Polygon

class Circle : Square {
    
    override func configure() {
        
        super.configure()
        
        view.layer.cornerRadius = view.frame.width / 2
        view.layer.masksToBounds = true
        
    }
    
} // end class Circle

class Rectangle : Polygon {
    
    override func configure() {
        
        let frame = CGRect(x: 0, y: 0, width: height + height/2, height: height)
        view.frame = frame
        view.backgroundColor = UIColor.blue
        
    }
    
} // end class Rectangle


class Square : Polygon {
    
    override func configure() {
       
        view.frame = CGRect(x: 0, y: 0, width: height, height: height)
        view.backgroundColor = UIColor.blue
        
    }
    
} // end class Square
