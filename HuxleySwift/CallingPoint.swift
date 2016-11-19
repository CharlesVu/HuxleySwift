//
//  CallingPoint.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

public class CallingPoint
{
    public let locationName: String?
    public let crs: String?

    public let st: String?
    public let et: String?
    public let at: String?

    public let isCancelled: Bool?
    public let length: Int?
    public let detachFront: Bool?
    
    public let adhocAlerts: String?
    
    public required init(from dictionary: [String: Any])
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
