//
//  CPLayer.swift
//  Consonance
//
//  Created by Charlton Provatas on 3/5/17.
//  Copyright © 2017 Charlton Provatas. All rights reserved.
//

import Foundation
import Cocoa

class CPLayer : CAShapeLayer {
    
    override init() {
        super.init()        
        contentsScale = CPGlobals.contentScaleFactor
        masksToBounds = false
        drawsAsynchronously = true
        if CPDebugger.enableBorders {
            borderWidth = 2
            borderColor = NSColor(calibratedRed: CGFloat(arc4random_uniform(255)) / CGFloat(255), green: CGFloat(arc4random_uniform(255)) / CGFloat(255), blue: CGFloat(arc4random_uniform(255)) / CGFloat(255), alpha: 1).cgColor
        }
    }        
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func addSublayer(_ layer: CALayer) {
        super.addSublayer(layer)
        (layer as? CPLayer)?.didMoveToSuperlayer()        
    }
    
    // notifies any CPLayer that is a sublayer of CPLayer
    // that it was added to the layer hierarchy
    public func didMoveToSuperlayer() {
        
    }
}
