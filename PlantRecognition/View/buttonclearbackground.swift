//
//  buttonclearbackground.swift
//  PlantRecognition
//
//  Created by farnaz on 2019-12-13.
//  Copyright © 2019 farnaz. All rights reserved.
//

import UIKit

class buttonclearbackground: UIButton {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.layer.backgroundColor = CGColor(srgbRed: 255, green: 255, blue: 255, alpha: 0.2)
        self.layer.borderWidth = 4
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.cornerRadius = 10
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
