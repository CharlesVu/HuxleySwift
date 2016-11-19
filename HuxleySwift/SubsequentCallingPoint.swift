//
//  SubsequentCallingPoint.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

public class SubsequentCallingPoint
{
    public private(set) var callingPoints: [CallingPoint]
    public let serviceType: Int
    public let serviceChangeRequired: Bool
    public let assocIsCancelled: Bool
    
    public required init(from dictionary: [String: Any])
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
