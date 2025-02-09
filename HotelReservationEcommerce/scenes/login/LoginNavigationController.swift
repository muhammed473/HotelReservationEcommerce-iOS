//
//  LoginNavigationController.swift
//  HotelReservationEcommerce
//
//  Created by muhammed dursun on 8.02.2025.
//

class LoginNavigationController: NavigationController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isNavigationBarHidden = true
        
        let signInController = SignInController()
        viewControllers = [signInController]
    }
    
    func signInToSignUp() {
        let signUpController  = SignUpController()
        pushViewController(signUpController, animated: true)
    }
    

    func signUpToSignIn() {
        popToRootViewController(animated: true)
    }
}
