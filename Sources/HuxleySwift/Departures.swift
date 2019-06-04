//
//  Departures.swift
//  HuxleySwift
//
//  Created by charles on 19/11/2016.
//  Copyright © 2016 charles. All rights reserved.
//

import Foundation

public class Departures: Codable {
    public private(set) var trainServices: [TrainServices] = []
    public let locationName: String
}
