//
//  RoundCornerButoon.swift
//  PlantRecognition
//
//  Created by farnaz on 2019-12-13.
//  Copyright © 2019 farnaz. All rights reserved.
//

import UIKit

class RoundCornerButoon: UIButton {

    required init?(coder: NSCoder) {
        super.init(coder: coder )
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.cornerRadius = 10
    }

}
