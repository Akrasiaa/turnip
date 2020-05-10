//
//  UserDefault+Price.swift
//  turnip
//
//  Created by Florent Taine on 10/05/2020.
//  Copyright © 2020 Florent Taine. All rights reserved.
//

import Foundation

extension UserDefaults {
    private struct Keys {
        static let mondayAM = "mondayAM"
        static let mondayPM = "mondayPM"
        static let tuesdayAM = "tuesdayAM"
        static let tuesdayPM = "tuesdayPM"
        static let wednesdayAM = "wednesdayAM"
        static let wednesdayPM = "wednesdayPM"
        static let thursdayAM = "thursdayAM"
        static let thursdayPM = "thursdayPM"
        static let fridayAM = "fridayAM"
        static let fridayPM = "fridayPM"
        static let saturdayAM = "saturdayAM"
        static let saturdayPM = "saturdayPM"
        static let sunday = "sunday"
    }
    
    static var mondayAMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.mondayAM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.mondayAM)
        }
    }
    
    static var mondayPMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.mondayPM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.mondayPM)
        }
    }
    
    static var tuesdayAMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.tuesdayAM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.tuesdayPM)
        }
    }
    
    static var tuesdayPMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.tuesdayPM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.tuesdayPM)
        }
    }
    
    static var wednesdayAMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.wednesdayAM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.wednesdayAM)
        }
    }
    
    static var wednesdayPMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.wednesdayPM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.wednesdayPM)
        }
    }
    
    static var thursdayAMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.thursdayAM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.thursdayAM)
        }
    }
    
    static var thursdayPMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.thursdayPM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.thursdayAM)
        }
    }
    
    static var fridayAMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.fridayAM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.fridayAM)
        }
    }
    
    static var fridayPMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.fridayPM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.fridayPM)
        }
    }
    
    static var saturdayAMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.saturdayAM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.saturdayAM)
        }
    }
    
    static var saturdayPMPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.saturdayPM) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.saturdayPM)
        }
    }
    
    static var sundayPrice: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.sunday) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.sunday)
        }
    }
}
