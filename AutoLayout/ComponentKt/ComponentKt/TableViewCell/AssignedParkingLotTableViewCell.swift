//
//  AssignedParkingLotTableViewCell.swift
//  ComponentKt
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class AssignedParkingLotTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imgParkingLot: UIImageView!
    @IBOutlet weak var lblParkingId: UILabel!
    @IBOutlet weak var lblNameOfParkingLot: UILabel!
    @IBOutlet weak var lblAddressOfParkingLot: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: config Cell
    func configCell(data: AssignedParkingLot) {
        imgParkingLot.image = UIImage(named: data.imgParkingLot)
        lblParkingId.text = data.lblParkingId
        lblNameOfParkingLot.text = data.lblParkingLotName
        lblAddressOfParkingLot.text = data.lblParkingLotAddress
    }
    
}
