//
//  SignUpViewController.swift
//  SignUp
//
//  Created by Ricki Bin Yamin on 23/07/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    lazy var signUpLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 130/255, green: 131/255, blue: 134/255, alpha: 1)
        label.font = .systemFont(ofSize: 52, weight: .regular)
        label.text = "Sign Up"
        
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 130/255, green: 131/255, blue: 134/255, alpha: 1)
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.text = "Email"
        
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.textContentType = .emailAddress
        textField.keyboardType = .emailAddress
        textField.autocapitalizationType = .none
        
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 130/255, green: 131/255, blue: 134/255, alpha: 1)
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.text = "Password"
        
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.textContentType = .newPassword
        textField.autocapitalizationType = .none
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    lazy var createAccountbutton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create Account", for: .normal)
        button.setTitleColor(UIColor(red: 130/255, green: 131/255, blue: 134/255, alpha: 1), for: .normal)
        button.backgroundColor = UIColor(red: 224/255, green: 226/255, blue: 226/255, alpha: 1)
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    lazy var appleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "appleButton"), for: .normal)
        
        return button
    }()
    
    lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "facebookButton"), for: .normal)
        
        return button
    }()
    
    lazy var googleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "googleButton"), for: .normal)
        
        return button
    }()
    
    lazy var orContinueWithLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 130/255, green: 131/255, blue: 134/255, alpha: 1)
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.text = "Or Continue with"
        
        return label
    }()
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .white
        view.addSubview(signUpLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(createAccountbutton)
        view.addSubview(appleButton)
        view.addSubview(facebookButton)
        view.addSubview(googleButton)
        view.addSubview(orContinueWithLabel)
        
        signUpLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        signUpLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        emailLabel.topAnchor.constraint(equalTo: signUpLabel.bottomAnchor, constant: 46).isActive = true
        emailLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 25).isActive = true
        passwordLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        createAccountbutton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50).isActive = true
        createAccountbutton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        createAccountbutton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        createAccountbutton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        facebookButton.topAnchor.constraint(equalTo: createAccountbutton.bottomAnchor, constant: 103).isActive = true
        facebookButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        facebookButton.widthAnchor.constraint(equalToConstant: 57).isActive = true
        facebookButton.heightAnchor.constraint(equalToConstant: 57).isActive = true
        
        appleButton.centerYAnchor.constraint(equalTo: facebookButton.centerYAnchor).isActive = true
        appleButton.rightAnchor.constraint(equalTo: facebookButton.leftAnchor, constant: -20).isActive = true
        appleButton.widthAnchor.constraint(equalToConstant: 57).isActive = true
        appleButton.heightAnchor.constraint(equalToConstant: 57).isActive = true
        
        googleButton.centerYAnchor.constraint(equalTo: facebookButton.centerYAnchor).isActive = true
        googleButton.leftAnchor.constraint(equalTo: facebookButton.rightAnchor, constant: 20).isActive = true
        googleButton.widthAnchor.constraint(equalToConstant: 57).isActive = true
        googleButton.heightAnchor.constraint(equalToConstant: 57).isActive = true
        
        orContinueWithLabel.bottomAnchor.constraint(equalTo: facebookButton.topAnchor, constant: -12).isActive = true
        orContinueWithLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
