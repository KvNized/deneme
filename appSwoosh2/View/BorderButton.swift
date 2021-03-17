//
//  BorderButton.swift
//  appSwoosh2
//
//  Created by Mehmet Kavunoğlu on 5.03.2021.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
