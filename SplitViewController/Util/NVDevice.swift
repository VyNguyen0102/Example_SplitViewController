//
//  NVDevice.swift
//  SplitViewController
//
//  Created by Vy Nguyen on 12/21/15.
//  Copyright © 2015 VyNV. All rights reserved.
//

import UIKit

class NVDevice: NSObject {
    static func isIpad() -> Bool {
        if(UIDevice.currentDevice().userInterfaceIdiom == .Pad) {
            return true
        }
        return false
    }
}
