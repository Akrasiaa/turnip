//
//  PriceDailyModel.swift
//  turnip
//
//  Created by Florent Taine on 10/05/2020.
//  Copyright © 2020 Florent Taine. All rights reserved.
//

import Combine
import Foundation

class PriceDailyModel: ObservableObject {
    @Published var mondayAM: String
    @Published var mondayPM: String
    @Published var tuesdayAM: String
    @Published var tuesdayPM: String
    @Published var wednesdayAM: String
    @Published var wednesdayPM: String
    @Published var thursdayAM: String
    @Published var thursdayPM: String
    @Published var fridayAM: String
    @Published var fridayPM: String
    @Published var saturdayAM: String
    @Published var saturdayPM: String
    @Published var sunday: String

    @Published var odds = PriceOddsModel()
    
    private var cancellable: AnyCancellable?
    
    init() {
        
        mondayAM = UserDefaults.mondayAMPrice
        mondayPM = UserDefaults.mondayPMPrice
        tuesdayAM = UserDefaults.tuesdayAMPrice
        tuesdayPM = UserDefaults.tuesdayPMPrice
        wednesdayAM = UserDefaults.wednesdayAMPrice
        wednesdayPM = UserDefaults.wednesdayPMPrice
        thursdayAM = UserDefaults.thursdayAMPrice
        thursdayPM = UserDefaults.thursdayPMPrice
        fridayAM = UserDefaults.fridayAMPrice
        fridayPM = UserDefaults.fridayPMPrice
        saturdayAM = UserDefaults.saturdayAMPrice
        saturdayPM = UserDefaults.saturdayPMPrice
        sunday = UserDefaults.sundayPrice
        
        fetchOdds()
    }
    
    func fetchOdds() {
        cancellable = URLSession.shared.dataTaskPublisher(for: getUrlApi())
            .map { $0.data }
            .decode(type: PriceOddsModel.self, decoder: JSONDecoder())
            .replaceError(with: PriceOddsModel())
            .eraseToAnyPublisher()
            .assign(to: \.odds, on: self)
    }
    
    private func getUrlApi() -> URL {
        var stringUrl = "https://api.ac-turnip.com/data/?f="
        stringUrl += sunday
        stringUrl += "-\(mondayAM)"
        stringUrl += "-\(mondayPM)"
        stringUrl += "-\(tuesdayAM)"
        stringUrl += "-\(tuesdayPM)"
        stringUrl += "-\(wednesdayAM)"
        stringUrl += "-\(wednesdayPM)"
        stringUrl += "-\(thursdayAM)"
        stringUrl += "-\(thursdayPM)"
        stringUrl += "-\(fridayAM)"
        stringUrl += "-\(fridayPM)"
        stringUrl += "-\(saturdayAM)"
        stringUrl += "-\(saturdayPM)"

        return URL(string: stringUrl)!
    }
}
