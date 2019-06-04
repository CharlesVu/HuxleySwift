//
//  SubsequentCallingPoint.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

public class SubsequentCallingPoint: Codable {
    public private(set) var callingPoints: [CallingPoint]
    public let serviceType: Int
    public let serviceChangeRequired: Bool
    public let assocIsCancelled: Bool
}
