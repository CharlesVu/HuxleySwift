//
//  Destination.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

public class Destination: Codable {
    public let locationName: String?
    public let crs: String?
    
    public let via: String?
    public let futureChangeTo: String?
    public let assocIsCancelled: String?
}
