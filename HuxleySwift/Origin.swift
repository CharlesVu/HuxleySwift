//
//  Origin.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

class Origin
{
    let locationName: String?
    let crs: String?
    
    let via: String?
    let futureChangeTo: String?
    let assocIsCancelled: String?
    
    required init(from dictionary: [String: Any])
    {
        crs = dictionary["crs"] as? String
        locationName = dictionary["locationName"] as? String
        
        via = dictionary["via"] as? String
        futureChangeTo = dictionary["futureChangeTo"] as? String
        assocIsCancelled = dictionary["assocIsCancelled"] as? String
        
    }
}
