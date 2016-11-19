//
//  TrainServices.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

class TrainServices
{
    private(set) var subsequentCallingPoints: [SubsequentCallingPoint] = []
    private(set) var origin: Origin?
    private(set) var destination: Destination?
    
    let currentOrigins: String?
    let currentDestinations: String?
    let rsid: String?
    let sta: String?
    let eta: String?
    let etd: String?
    
    let platform: String?
    let `operator`: String?
    let operatorCode: String?
    
    let isCircularRoute: Bool
    let isCancelled: Bool
    let filterLocationCancelled: Bool
    let serviceType: Int
    let length: Int
    let detachFront: Bool
    let isReverseFormation: Bool
    let cancelReason: String?
    let delayReason: String?
    let serviceID: String?
    let serviceIdPercentEncoded: String?
    let serviceIdGuid: String?
    let serviceIdUrlSafe: String?
    let adhocAlerts: String?
    
    required init(from dictionary: [String: Any])
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
