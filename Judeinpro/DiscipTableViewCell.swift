//
//  DiscipTableViewCell.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 30/06/15.
//  Copyright (c) 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit

class DiscipTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomDiscp: UILabel!
    
    @IBOutlet weak var logoDiscp: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
