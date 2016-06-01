//
//  CustomTableViewCell.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 5/07/15.
//  Copyright (c) 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var primeraCelda: UILabel!
    
    @IBOutlet weak var segundaCelda: UILabel!
    
    @IBOutlet weak var terceraCelda: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
