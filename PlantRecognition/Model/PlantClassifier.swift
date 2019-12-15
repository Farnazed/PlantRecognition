//
//  PlantClassifier.swift
//  PlantRecognition
//
//  Created by farnaz on 2019-12-14.
//  Copyright © 2019 farnaz. All rights reserved.
//

import Foundation
import Vision
import AVFoundation
class PlantClassifier{
    
  private func createClassificationRequest(modelURL: URL) -> VNCoreMLRequest? {
    
    fileprivate func showProductInfo(_ identifier: String) {
        // Perform all UI updates on the main queue.
        DispatchQueue.main.async(execute: {
            if self.productViewOpen {
                // Bail out early if another observation already opened the product display.
                return
            }
            self.productViewOpen = true
            self.performSegue(withIdentifier: "showProductSegue", sender: identifier)
        })
    }
    
      
      do {
          let objectClassifier = try VNCoreMLModel(for: MLModel(contentsOf: modelURL))
          let classificationRequest = VNCoreMLRequest(model: objectClassifier, completionHandler: { (request, error) in
              if let results = request.results as? [VNClassificationObservation] {
                  print("\(results.first!.identifier) : \(results.first!.confidence)")
                  if results.first!.confidence > 0.9 {
                      self.showProductInfo(results.first!.identifier)
                  }
              }
          })
          return classificationRequest
          
      } catch let error as NSError {
          print("Model failed to load: \(error).")
          return nil
      }
  }
  
}
