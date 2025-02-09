//
//  SignInController.swift
//  HotelReservationEcommerce
//
//  Created by muhammed dursun on 8.02.2025.
//

class SignInController: Controller<SignInViewModel, LoginNavigationController> {

  //  private let backgroundView = View() // MARK: Tasarım son aşamada tekrardan gözden geçirilecek.
    private let backgroundImageView = ImageView()
    private let titleLabel = Label()
    private let emailTextField = TextFieldLayout()
    private let passwordTextField = TextFieldLayout()
    private let signInButton = ButtonPrimary()
    private let signUpButton = ButtonSecondary()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        emailTextField.text = nil
        passwordTextField.text = nil
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addSubviews(backgroundImageView, titleLabel,emailTextField, passwordTextField, signInButton, signUpButton)
        
        activateConstraints(
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            titleLabel.heightAnchor.constraint(equalToConstant: 50),
            
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 160),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        )
    }
    
    
    override func customizeViews() {
        backgroundImageView.image = .backgroundBeachFilled
        backgroundImageView.alpha = 0.85
        
        titleLabel.text = "Happy Holidays"
        titleLabel.font = .setDynamicFont(size: 27)
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.backgroundColor = .titlePink
        titleLabel.layer.cornerRadius = 100
        
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Password"
        
        passwordTextField.isSecureTextEntry = true
        
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.action = signInButtonClicked
        
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.titleLabel?.textColor = .white
        signUpButton.action = signUpButtonClicked
    }
    
    
    private func signInButtonClicked() {
        guard
            let email = emailTextField.text, !email.isEmpty,
            let password = passwordTextField.text, !password.isEmpty
        else {
            return
        }
    }
    
    
    private func signUpButtonClicked() {
        navController?.signInToSignUp()
    }
}
