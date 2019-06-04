//
//  TrainServices.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

public class TrainServices : Codable {
    public private(set) var subsequentCallingPoints: [SubsequentCallingPoint] = []
    public private(set) var origin: Origin
    public private(set) var destination: Destination
    
    public let currentOrigins: String
    public let currentDestinations: String
    public let rsid: String
    public let sta: String
    public let eta: String
    public let std: String
    public let etd: String

    public let platform: String
    public let `operator`: String
    public let operatorCode: String

    public let isCircularRoute: Bool
    public let isCancelled: Bool
    public let filterLocationCancelled: Bool
    public let serviceType: Int
    public let length: Int
    public let detachFront: Bool
    public let isReverseFormation: Bool
    public let cancelReason: String
    public let delayReason: String
    public let serviceID: String
    public let serviceIdPercentEncoded: String
    public let serviceIdGuid: String
    public let serviceIdUrlSafe: String
    public let adhocAlerts: String
}
