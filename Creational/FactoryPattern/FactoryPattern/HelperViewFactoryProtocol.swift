//
//  HelperViewFactoryProtocol.swift
//  FactoryPattern
//
//  Created by SOTSYS202 on 08/03/19.
//  Copyright © 2019 SOTSYS202. All rights reserved.
//

import Foundation
import UIKit

let defaultHeight = 200
let defaultColor = UIColor.blue

protocol HelperViewFactoryProtocol {
    
    func configure()
    func position()
    func display()
    var height: Int { get }
    var view: PolygonView { get }
    var parentView: UIView { get }
    
}
