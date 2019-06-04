//
//  CallingPoint.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

public class CallingPoint: Codable {
    public let locationName: String?
    public let crs: String?

    public let st: String?
    public let et: String?
    public let at: String?

    public let isCancelled: Bool?
    public let length: Int?
    public let detachFront: Bool?
    
    public let adhocAlerts: String?
}
