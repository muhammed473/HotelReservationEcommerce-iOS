//
//  LoadingView.swift
//  HotelReservationEcommerce
//
//  Created by muhammed dursun on 8.02.2025.
//

import UIKit


class LoadingView: UserInteractionView {
    
    private let indicator = UIActivityIndicatorView(style: .large)
    static let instance = LoadingView()
    
    
    override func configure() {
        super.configure()
        
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.color = .systemRed
        
        addSubview(indicator)
        
        NSLayoutConstraint.activate([
            indicator.centerXAnchor.constraint(equalTo: centerXAnchor),
            indicator.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    
    override func show() {
        indicator.startAnimating()
        
        super.show()
    }
    
    
    override func afterHide(_: Bool) {
        indicator.stopAnimating()
    }
}

