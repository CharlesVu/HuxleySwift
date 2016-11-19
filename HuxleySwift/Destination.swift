//
//  Destination.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

public class Destination
{
    public let locationName: String?
    public let crs: String?
    
    public let via: String?
    public let futureChangeTo: String?
    public let assocIsCancelled: String?
    
    public required init(from dictionary: [String: Any])
    {
        crs = dictionary["crs"] as? String
        locationName = dictionary["locationName"] as? String
        
        via = dictionary["via"] as? String
        futureChangeTo = dictionary["futureChangeTo"] as? String
        assocIsCancelled = dictionary["assocIsCancelled"] as? String
        
    }
}
