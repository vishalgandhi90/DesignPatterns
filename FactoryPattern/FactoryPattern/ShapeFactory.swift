//
//  ShapeFactory.swift
//  FactoryPattern
//
//  Created by SOTSYS202 on 08/03/19.
//  Copyright © 2019 SOTSYS202. All rights reserved.
//

import Foundation
import UIKit

enum Shapes {
    
    case square
    case circle
    case rectangle
    
}

class ShapeFactory {
    
    let parentView: UIView
    
    init(parentView: UIView) {
        
        self.parentView = parentView
        
    }
    
    func create(as shape: Shapes) -> HelperViewFactoryProtocol {
        
        switch shape {
            
        case .square:
            
            let square = Square(parentView: parentView)
            return square
            
        case .circle:
            
            let circle = Circle(parentView: parentView)
            return circle
            
        case .rectangle:
            
            let rectangle = Rectangle(parentView: parentView)
            return rectangle
            
        }
        
    } // end func display
    
} // end class ShapeFactory

// Public factory method to display shapes.
func createShape(_ shape: Shapes, on view: UIView) {
    
    removeShape(on: view)
    let shapeFactory = ShapeFactory(parentView: view)
    shapeFactory.create(as: shape).display()
    
}

func removeShape(on view: UIView)
{
    //Custom Method to remove previous shapes
    guard let subView = view.findSubview(ofType: PolygonView.self) else {
        return
    }
    subView.removeFromSuperview()
}

// Alternative public factory method to display shapes.
// Technically, the factory method should return one of
// a number of related classes.
func getShape(_ shape: Shapes, on view: UIView) -> HelperViewFactoryProtocol {
    
    removeShape(on: view)
    let shapeFactory = ShapeFactory(parentView: view)
    return shapeFactory.create(as: shape)
    
}

extension UIView {
    
    /* This helper method tries to find a subview of the given class. It returns
     the first view found, or nil if none are found. */
    func findSubview(ofType theClass: AnyClass) -> UIView? {
        for subview in self.subviews {
            if subview.isKind(of:theClass) {
                return subview
            }
        }
        return nil
    }
    
}
