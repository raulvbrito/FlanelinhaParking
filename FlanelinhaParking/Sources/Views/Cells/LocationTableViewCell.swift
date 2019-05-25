//
//  LocationTableViewCell.swift
//  FlanelinhaParking
//
//  Created by Adriano Mendes Marinheiro on 23/05/19.
//  Copyright © 2019 Raul Brito. All rights reserved.
//

import UIKit

class LocationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var locationAddressLabel: UILabel!
    @IBOutlet weak var locationSymbolImageView: UIImageView!
    @IBOutlet weak var parkingSymbolView: UIView!
    @IBOutlet weak var parkingSymbolLabel: UILabel!
    @IBOutlet weak var affiliateParkingSymbolView: UIView!
    @IBOutlet weak var affiliateParkingSymbolLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
