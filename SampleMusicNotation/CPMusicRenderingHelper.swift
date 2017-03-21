//
//  CPMusicRenderingHelper.swift
//  Consonance
//
//  Created by Charlton Provatas on 3/20/17.
//  Copyright © 2017 Charlton Provatas. All rights reserved.
//

import Foundation


final class CPMusicRenderingHelper {
    
    //gives you the yPosition of a note based on the pitch
    public class func yPosition(pitch: CPPitch, measureFrame frame: CGRect) -> CGFloat {
        let spacing = frame.height / 8
        
        //TODO: multiple pitches
        //TODO: clef transposition        
        let initialPitch = pitch
        
        let baselineValue : CGFloat = (4.0 * 7.0) + 6
        let pitchValue : CGFloat = CGFloat(initialPitch.octave * 7) + CGFloat(initialPitch.step.intValue)
        return -((baselineValue - pitchValue) * spacing)
    }
    
    public class func yPosition(_ clef: CPClefLayer, measureFrame frame: CGRect) -> CGFloat {            
        return -(clef.frame.size.height * 0.5) + (frame.size.height / 4) * CGFloat(clef.line - 1)
    }
}
