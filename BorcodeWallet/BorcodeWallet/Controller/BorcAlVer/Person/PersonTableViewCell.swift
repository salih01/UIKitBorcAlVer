//
//  PersonTableViewCell.swift
//  BorcodeWallet
//
//  Created by ALFA on 18.09.2022.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var adSoyadLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var miktarLabel: UILabel!
    
    func update(with person:Person) {
        symbolLabel.text = person.emoji
        adSoyadLabel.text = person.adSoyad
        descriptionLabel.text = person.description
        miktarLabel.text = person.miktar
    }
    
}
