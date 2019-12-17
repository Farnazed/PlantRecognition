//
//  PlantRecognitionVc.swift
//  PlantRecognition
//
//  Created by farnaz on 2019-12-14.
//  Copyright © 2019 farnaz. All rights reserved.
//

import UIKit

class PlantRecognitionVc: UIViewController {
    
    private var plantName : String!
    var plant : PlantModel?
    let pvc = PlantVC()
    var pickedImage : UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func detectPlantBtnWasPressed(_ sender: Any) {
        
        CameraHandler.shared.showActionSheet(vc: self)
        CameraHandler.shared.imagePickedBlock = { (image) in
            self.dismiss(animated: true) {
                self.pickedImage = image
                self.plantName = PlantClassifier.instance.getPlantName(image: self.pickedImage) ?? " "
                self.plant = PlantModel(name: self.plantName!, light: "sun", water: "winf", characteristic: "nothing")
                
                let pvc = self.storyboard?.instantiateViewController(withIdentifier: "PlantVC") as! PlantVC
                pvc.setUp(plant: self.plant!)
                self.present(pvc, animated: true, completion: nil)
            }
        }
    }
    
    

    @IBAction func showPlantList(_ sender: Any) {
        
    }
    
   
    

}
