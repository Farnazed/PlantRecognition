//
//  PlantModel.swift
//  PlantRecognition
//
//  Created by farnaz on 2019-12-16.
//  Copyright © 2019 farnaz. All rights reserved.
//

import UIKit

class PlantModel{
    var name: String
   // var image : UIImage
    var lightDetail : String
    var wateringDetail : String
    var specialCharacteristic : String
    
    init(name: String, light : String, water: String, characteristic : String) {
        self.name = name
      //  self.image = image
        self.lightDetail = "light"
        self.wateringDetail = "water"
        self.specialCharacteristic = "characteristic"
    }
}
