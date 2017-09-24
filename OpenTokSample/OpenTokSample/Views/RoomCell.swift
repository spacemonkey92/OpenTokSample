//
//  RoomCell.swift
//  OpenTokSample
//
//  Created by nitin muthyala on 24/9/17.
//  Copyright © 2017 Spaceage Labs. All rights reserved.
//

import UIKit

class RoomCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Border
        self.mainView.layer.cornerRadius = 6
        self.mainView.layer.borderWidth = 0.5
        self.mainView.layer.borderColor = UIColor.darkGray.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
