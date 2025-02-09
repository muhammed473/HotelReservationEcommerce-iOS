//
//  ViewModel.swift
//  HotelReservationEcommerce
//
//  Created by muhammed dursun on 8.02.2025.
//


class ViewModel {
    
    
    required init() {
        
    }
    
  
    func show(message: String?, type: AlertType) {
        let okAction = AlertModel(title: "Okay")
        AlertView.instance.show(type: type, message: message, actions: [okAction])
    }
    
    
    func showLoading() {
        LoadingView.instance.show()
    }
    
    
    func hideLoading() {
        LoadingView.instance.hide()
    }
    
    
    func showAlert(type: AlertType, message: String?, actions: [AlertModel]) {
        AlertView.instance.show(type: type, message: message, actions: actions)
    }
}

