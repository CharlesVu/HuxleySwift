//
//  CRSList.swift
//  HuxleySwift
//
//  Created by charles on 20/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

class CRSList
{
    public var crsToName: [String: String] = [:]
    
    public required init(from array: [[String: String]])
    {
        for crsData in array
        {
            let crsCode = crsData["crsCode"]!
            let stationName = crsData["stationName"]!

            crsToName[crsCode] = stationName
        }
    }
}
