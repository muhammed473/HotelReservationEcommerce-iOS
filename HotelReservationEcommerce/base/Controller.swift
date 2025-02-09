//
//  Controller.swift
//  HotelReservationEcommerce
//
//  Created by muhammed dursun on 8.02.2025.
//

import UIKit



//MARK: Controller
class Controller<VM: ViewModel, NC: NavigationController>: UIViewController {
    
    lazy var viewModel = VM()
    private var navigationBarClicked: Handler?
    
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = UIColor(named: "snow")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeViews()
    }
    
    
    var navController: NC? {
        navigationController as? NC
    }
    
    
    func customizeViews() {
        
    }
    
    
    func addSubviews(_ subview: UIView...) {
        subview.forEach {
            view.addSubview($0)
        }
    }
    
    
    func activateConstraints(_ constraints: NSLayoutConstraint...) {
        NSLayoutConstraint.activate(constraints)
    }
    
    
    func setNavButton(icon: UIImage?, onClicked: Handler?) {
        navigationBarClicked = onClicked
        navigationItem.rightBarButtonItem = .init(image: icon, style: .done, target: self, action: #selector(navButtonClicked))
    }
    
    
    @objc private func navButtonClicked() {
        navigationBarClicked?()
    }
}



//MARK: ControllerHasImagePicker
class ControllerHasImagePicker<VM: ViewModel, NC: NavigationController>: Controller<VM, NC>, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    func openImagePicker() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true)
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        
        if let image = info[.editedImage] as? UIImage {
            onImageSelected(image: image)
        }
    }
    
    
    ///Seçilen image'i handle etmek için override ederiz.
    func onImageSelected(image: UIImage) {}
}
