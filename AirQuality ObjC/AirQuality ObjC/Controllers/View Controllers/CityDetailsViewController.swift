//
//  CityDetailsViewController.swift
//  AirQuality ObjC
//
//  Created by Jimmy on 5/6/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

import UIKit

class CityDetailsViewController: UIViewController {
    
    var country: String?
    var state: String?
    var city: String?
    
    // MARK: - Outlets
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var stateNameLabel: UILabel!
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var aqiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let city = city,
            let state = state,
            let country = country
            else { return }
        
        OPPCityAirQualityController.fetchData(forCity: city, state: state, country: country) { (cityDetails) in
            if let details = cityDetails {
                self.updateViews(with: details)
            }
        }
    }
    
    func updateViews(with details: OPPCityAirQuality) {
        DispatchQueue.main.async {
            self.cityNameLabel.text = details.city
            self.stateNameLabel.text = details.state
            self.countryNameLabel.text = details.country
            self.tempLabel.text = "\(details.weather.temperature) ºC"
            self.humidityLabel.text = "\(details.weather.humidity) %"
            self.windSpeedLabel.text = "\(details.weather.windSpeed) mp/h"
            self.aqiLabel.text = "\(details.pollution.airQualityIndex) AQI"
        }
    }
} // End of Class
