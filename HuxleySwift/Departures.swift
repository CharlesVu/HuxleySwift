//
//  Departures.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

public class Departures
{
    public private(set) var trainServices: [TrainServices] = []
    public let locationName: String?
    
    public required init(from dictionary: [String: Any])
    {
        if let trainServicesData = dictionary["trainServices"] as? [[String:Any]]
        {
            for trainServiceData in trainServicesData
            {
                let trainService = TrainServices(from: trainServiceData)
                trainServices.append(trainService)
            }
        }
        
        locationName = dictionary["locationName"] as? String
    }
}
