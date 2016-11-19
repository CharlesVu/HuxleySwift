//
//  CallingPoint.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

class CallingPoint
{
    let locationName: String?
    let crs: String?

    let st: String?
    let et: String?
    let at: String?

    let isCancelled: Bool?
    let length: Int?
    let detachFront: Bool?
    
    let adhocAlerts: String?
    
    required init(from dictionary: [String: Any])
    {
        crs = dictionary["crs"] as? String
        locationName = dictionary["locationName"] as? String

        st = dictionary["st"] as? String
        et = dictionary["et"] as? String
        at = dictionary["at"] as? String

        isCancelled = dictionary["isCancelled"] as? Bool
        length = dictionary["length"] as? Int
        detachFront = dictionary["detachFront"] as? Bool

        adhocAlerts = dictionary["adhocAlerts"] as? String
    }
}
