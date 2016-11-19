//
//  SubsequentCallingPoint.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

class SubsequentCallingPoint
{
    private(set) var callingPoints: [CallingPoint]
    let serviceType: Int
    let serviceChangeRequired: Bool
    let assocIsCancelled: Bool
    
    required init(from dictionary: [String: Any])
    {
        callingPoints = []

        if let callingPointsData = dictionary["callingPoint"] as? [[String:Any]]
        {
            for callPointData in callingPointsData
            {
                let callPoint = CallingPoint(from: callPointData)
                callingPoints.append(callPoint)
            }
        }
        
        serviceType = dictionary["serviceType"] as? Int ?? 0
        serviceChangeRequired = dictionary["serviceChangeRequired"] as? Bool ?? false
        assocIsCancelled = dictionary["assocIsCancelled"] as? Bool ?? false
    }
}
