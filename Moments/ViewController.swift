//
//  ViewController.swift
//  Moments
//
//  Created by Sachin's Macbook Pro on 30/10/20.
//

import UIKit

class WelcomeViewController: UIViewController {
    fileprivate let introImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "Icons"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    fileprivate let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up", for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 86/255, green: 194/255, blue: 149/255, alpha: 1)
        button.layer.cornerRadius = 10
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        return button
    }()
    
    fileprivate let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign In", for: .normal)
        button.tintColor = .black
        button.backgroundColor = UIColor(red: 251/255, green: 251/255, blue: 251/255, alpha: 1)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI(){
        view.backgroundColor = .white
        signInButtonLayout()
        signUpButtonLayout()
        introImageLayout()
    }
    
    private func introImageLayout(){
        view.addSubview(introImage)
        introImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        introImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        introImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        introImage.bottomAnchor.constraint(equalTo: signUpButton.topAnchor, constant: -40).isActive = true
    }
    
    private func signUpButtonLayout(){
        view.addSubview(signUpButton)
        signUpButton.bottomAnchor.constraint(equalTo: signInButton.topAnchor, constant: -20).isActive = true
        signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func signInButtonLayout(){
        view.addSubview(signInButton)
        signInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    
}

