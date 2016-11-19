//
//  TrainServices.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

public class TrainServices
{
    public private(set) var subsequentCallingPoints: [SubsequentCallingPoint] = []
    public private(set) var origin: Origin?
    public private(set) var destination: Destination?
    
    public let currentOrigins: String?
    public let currentDestinations: String?
    public let rsid: String?
    public let sta: String?
    public let eta: String?
    public let etd: String?
    
    public let platform: String?
    public let `operator`: String?
    public let operatorCode: String?
    
    public let isCircularRoute: Bool
    public let isCancelled: Bool
    public let filterLocationCancelled: Bool
    public let serviceType: Int
    public let length: Int
    public let detachFront: Bool
    public let isReverseFormation: Bool
    public let cancelReason: String?
    public let delayReason: String?
    public let serviceID: String?
    public let serviceIdPercentEncoded: String?
    public let serviceIdGuid: String?
    public let serviceIdUrlSafe: String?
    public let adhocAlerts: String?
    
    public required init(from dictionary: [String: Any])
    {
        if let subsequentCallingPointsData = dictionary["subsequentCallingPoints"] as? [[String:Any]]
        {
            for subsequentCallingPointData in subsequentCallingPointsData
            {
                let subsequentCallingPoint = SubsequentCallingPoint(from: subsequentCallingPointData)
                subsequentCallingPoints.append(subsequentCallingPoint)
            }
        }
        if let originData = dictionary["origin"] as? [String:Any]
        {
            origin = Origin(from: originData)
        }

        if let destinationData = dictionary["destination"] as? [String:Any]
        {
            destination = Destination(from: destinationData)
        }

        currentOrigins = dictionary["currentOrigins"] as? String
        currentDestinations = dictionary["currentDestinations"] as? String
        rsid = dictionary["rsid"] as? String
        sta = dictionary["sta"] as? String
        eta = dictionary["eta"] as? String
        etd = dictionary["etd"] as? String
        
        platform = dictionary["platform"] as? String
        `operator` = dictionary["operator"] as? String
        operatorCode = dictionary["operatorCode"] as? String
        
        isCircularRoute = dictionary["isCircularRoute"] as? Bool ?? false
        isCancelled = dictionary["isCancelled"] as? Bool ?? false
        filterLocationCancelled = dictionary["filterLocationCancelled"] as? Bool ?? false
        serviceType = dictionary["serviceType"] as? Int ?? 0
        length = dictionary["length"] as? Int ?? 0
        detachFront = dictionary["detachFront"] as? Bool ?? false
        isReverseFormation = dictionary["isReverseFormation"] as? Bool ?? false

        cancelReason = dictionary["cancelReason"] as? String
        delayReason = dictionary["delayReason"] as? String
        serviceID = dictionary["serviceID"] as? String
        serviceIdPercentEncoded = dictionary["serviceIdPercentEncoded"] as? String
        serviceIdGuid = dictionary["serviceIdGuid"] as? String
        serviceIdUrlSafe = dictionary["serviceIdUrlSafe"] as? String
        adhocAlerts = dictionary["adhocAlerts"] as? String
    }
}
