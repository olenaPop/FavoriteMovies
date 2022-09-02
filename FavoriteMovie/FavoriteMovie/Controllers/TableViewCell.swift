//
//  TableViewCell.swift
//  FavoriteMovie
//
//  Created by Olena Makhobei on 01.09.2022.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var yearLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
