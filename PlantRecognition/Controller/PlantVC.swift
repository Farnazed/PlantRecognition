//
//  PlantVC.swift
//  PlantRecognition
//
//  Created by farnaz on 2019-12-16.
//  Copyright © 2019 farnaz. All rights reserved.
//

import UIKit

class PlantVC: UIViewController {

    @IBOutlet weak var plantImage: UIImageView!
    @IBOutlet weak var plantName: UILabel!
    @IBOutlet weak var lightDetail: UILabel!
    @IBOutlet weak var wateringDetail: UILabel!
    @IBOutlet weak var specialCharacteristic: UILabel!
    
    var plant: PlantModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.plantName.text = plant?.name ?? ""
        print("View loaded")
    }
    
    func setUp(plant : PlantModel){
        self.plant = plant
    }
    
    @IBAction func saveBtnPressed(_ sender: Any) {
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
