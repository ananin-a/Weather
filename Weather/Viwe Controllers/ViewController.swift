//
//  ViewController.swift
//  Weather
//
//  Created by Alexey on 08.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!

    var networkWeatherManager = NetworkWeatherManager()


    @IBAction func searchPressed(_ sender: UIButton) {
        self.presentSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert) { city in
            self.networkWeatherManager.fetchCurrentWeather(forCity: city)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        networkWeatherManager.onCompletion = { currentWeather in
            print(currentWeather.temperature)
            print(currentWeather.cityName)
        }

        networkWeatherManager.fetchCurrentWeather(forCity: "Moscow")
    }
}

