//
//  ContentView.swift
//  turnip
//
//  Created by Florent Taine on 10/05/2020.
//  Copyright © 2020 Florent Taine. All rights reserved.
//

import Combine
import SwiftUI
import SwiftUICharts

struct PriceContentView: View {
    @ObservedObject var prices = PriceDailyModel()
    private var cancellable: AnyCancellable!
    
    
    
    var body: some View {
        VStack {
            Form {
            Section(header: Text("Buying price")) {
                TextField("eg. 85", text: $prices.sunday).keyboardType(.numberPad)
            }
            Section(header: Text("Weekly price")) {
                HStack {
                    TextField("Monday AM", text: $prices.mondayAM).keyboardType(.numberPad)
                    TextField("Monday PM", text: $prices.mondayPM).keyboardType(.numberPad)
                }
                HStack {
                    TextField("Tuesday AM", text: $prices.tuesdayAM).keyboardType(.numberPad)
                    TextField("Tuesday PM", text: $prices.tuesdayPM).keyboardType(.numberPad)
                }
                HStack {
                    TextField("Wednesday AM", text: $prices.wednesdayAM).keyboardType(.numberPad)
                    TextField("Wednesday PM", text: $prices.wednesdayPM).keyboardType(.numberPad)
                }
                HStack {
                    TextField("Thursday AM", text: $prices.thursdayAM).keyboardType(.numberPad)
                    TextField("Thursday PM", text: $prices.thursdayPM).keyboardType(.numberPad)
                }
                HStack {
                    TextField("Friday AM", text: $prices.fridayAM).keyboardType(.numberPad)
                    TextField("Friday PM", text: $prices.fridayPM).keyboardType(.numberPad)
                }
                HStack {
                    TextField("Saturday AM", text: $prices.saturdayAM).keyboardType(.numberPad)
                    TextField("Saturday PM", text: $prices.saturdayPM).keyboardType(.numberPad)
                }
            }
        }
            Text("\(prices.odds.avgPattern.count)")
        }
    }
}

struct PriceContentView_Previews: PreviewProvider {
    static var previews: some View {
        PriceContentView()
    }
}
