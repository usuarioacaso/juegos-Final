//
//  ParticTableViewCell.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 30/06/15.
//  Copyright (c) 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit

class ParticTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomPromo: UILabel!
    
    @IBOutlet weak var anioPromo: UILabel!

    @IBOutlet weak var logoPromo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.logoPromo.layer.masksToBounds  = false
        self.logoPromo.layer.cornerRadius   = self.logoPromo.frame.size.width / 10
        self.logoPromo.layer.borderWidth    = 1.0
        self.logoPromo.layer.borderColor    = UIColor.blackColor().CGColor
        self.logoPromo.clipsToBounds        = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
