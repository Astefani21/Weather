//
//  API+Extensions.swift
//  Weather
//
//  Created by Alexis Willey on 12/23/21.
//

import Foundation

extension API {
    static let baseURLString = "https://api.openweathermap.org/data/2.5/"
    
    static func getUrlFor(lat: Double, lon: Double) -> String {
        
        return "\(baseURLString)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=imperial"
    }
}
