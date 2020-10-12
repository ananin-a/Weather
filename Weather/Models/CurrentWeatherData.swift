//
//  CurrentWeatherData.swift
//  Weather
//
//  Created by Alexey on 12.10.2020.
//

import Foundation

struct CurrentWeatherData: Codable {
    let weather: [Weather]
    let main: Main
    let name: String

    struct Weather: Codable {
        let id: Int
    }

    struct Main: Codable {
        let temp: Double
        let feelsLike: Double

        enum CodingKeys: String, CodingKey {
            case temp
            case feelsLike = "feels_like"
        }
    }
}
