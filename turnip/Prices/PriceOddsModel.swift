//
//  PriceModel.swift
//  turnip
//
//  Created by Florent Taine on 10/05/2020.
//  Copyright © 2020 Florent Taine. All rights reserved.
//

import Foundation

struct PriceOddsModel: Codable {
    var minMaxPattern = [[Int]]()
    var avgPattern = [Double]()
}
