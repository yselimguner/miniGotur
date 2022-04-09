//
//  ProductTableViewCell.swift
//  Mini Gotur
//
//  Created by Yavuz Güner on 9.04.2022.
//

import UIKit

protocol ProoductTableViewCellProtocol {
    func giveOrder(indexPath:IndexPath)
}


class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    
    var hucreProtocol:ProoductTableViewCellProtocol?
    var indexPath:IndexPath?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func orderButton(_ sender: Any) {
        hucreProtocol?.giveOrder(indexPath: indexPath!)
        
        
    }
    
}
