//
//  TimingFunctions.swift
//  
//
//  Created by Adam Fordyce on 09/11/2019.
//  Copyright © 2019 Adam Fordyce. All rights reserved.
//

import Foundation

@discardableResult
public func after<T: UINumericType>(_ time: T, action: @escaping () -> ()) -> Timer {
    Timer.scheduledTimer(withTimeInterval: time.asDouble, repeats: false) { (timer) in
        action()
        timer.invalidate()
    }
}
