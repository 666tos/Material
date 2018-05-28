//
//  InterfaceOrientation.swift
//  Alamofire-iOS
//
//  Created by M Ivaniushchenko on 5/28/18.
//

import Foundation

public enum InterfaceOrientation : Int {
    case unknown
    
    case portrait
    
    case portraitUpsideDown
    
    case landscapeLeft
    
    case landscapeRight
}

extension InterfaceOrientation {
    
    public var isLandscape: Bool {
        return (self == .landscapeLeft) || (self == .landscapeRight)
    }
    
    public var isPortrait: Bool {
        return (self == .portrait) || (self == .portraitUpsideDown)
    }
}

public enum StatusBarStyle : Int {
    case `default` // Dark content, for use on light backgrounds
    case lightContent // Light content, for use on dark backgrounds
}
