//
//  Device.swift
//  HotelReservationEcommerce
//
//  Created by muhammed dursun on 8.02.2025.
//

import UIKit

struct Device {
    
    static let bounds = UIScreen.main.bounds
    static let size = bounds.size
    static let width = size.width
    static let height = size.height
    static let isAnIpad = UIDevice.current.userInterfaceIdiom == .pad
}
