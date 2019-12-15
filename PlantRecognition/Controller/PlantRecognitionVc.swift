//
//  PlantRecognitionVc.swift
//  PlantRecognition
//
//  Created by farnaz on 2019-12-14.
//  Copyright © 2019 farnaz. All rights reserved.
//

import UIKit

class PlantRecognitionVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func detectPlantBtnWasPressed(_ sender: Any) {
        
        CameraHandler.shared.showActionSheet(vc: self)
        CameraHandler.shared.imagePickedBlock = { (image) in
            print("i guss i have the image here")
        }
    }
    @IBAction func showPlantList(_ sender: Any) {
    }
    

}
