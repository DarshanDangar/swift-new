//
//  AssignedParkingLotModel.swift
//  ComponentKt
//
//  Created by Darshan Dangar on 15/06/23.
//

import Foundation
import UIKit

struct AssignedParkingLot {
    let imgParkingLot: String
    let lblParkingId: String
    let lblParkingLotName: String
    let lblParkingLotAddress: String
    
    static let arrParkingLotInfo: [AssignedParkingLot] = [
        AssignedParkingLot(imgParkingLot: "imgparking1", lblParkingId: "24582", lblParkingLotName: "179 W Washington St. - Garage", lblParkingLotAddress: "1280, St. NE, DC Road, 20001"),
        AssignedParkingLot(imgParkingLot: "imgparking2", lblParkingId: "24865", lblParkingLotName: "55 W Rockefeller Center", lblParkingLotAddress: "1280, St. NE, DC Road, 20001"),
        AssignedParkingLot(imgParkingLot: "imgparking3", lblParkingId: "24865", lblParkingLotName: "Emerald Green Center", lblParkingLotAddress: "1280, St. NE, DC Road, 20001")
    ]
}
