//
//  SignInViewController.swift
//  locale-app
//
//  Created by Muhammad Akbar on 4/16/24.
//

import UIKit

class SignInViewController: UIViewController {
    
    // UI components
    private let usernameTextField = UITextField()
    private let passwordTextField = UITextField()
    private let loginButton = UIButton()
    private let signUpButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        configureTextFields()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        usernameTextField.placeholder = "Username"
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [usernameTextField, passwordTextField, loginButton, signUpButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    private func configureTextFields() {
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @objc private func handleLogin() {
        guard let username = usernameTextField.text,
              let password = passwordTextField.text,
              validateUser(username: username, password: password) else {
            print("Invalid username or password")
            return
        }
        print("Login successful")
    }
    
    @objc private func handleSignUp() {
        guard let username = usernameTextField.text, !username.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            print("Username or password cannot be empty")
            return
        }
        UserDefaults.standard.set(password, forKey: username)
        print("User registered successfully")
    }
    
    private func validateUser(username: String, password: String) -> Bool {
        guard let storedPassword = UserDefaults.standard.string(forKey: username) else { return false }
        return password == storedPassword
    }
}

extension SignInViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
