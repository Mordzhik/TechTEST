//
//  SignUpViewController.swift
//  TechTest
//
//  Created by tse on 10/14/21.
//  Copyright © 2021 marzhan. All rights reserved.
//
import SnapKit
import UIKit

class SignUpViewController: UIViewController {
    
    //First label
     lazy var firstLabel: UILabel = {
           let label = UILabel()
           label.text = "Getting Started"
           label.font = UIFont(name:"Ubuntu-Bold",size:24)
           label.textAlignment = .left
           label.font = UIFont.boldSystemFont(ofSize: 24)
           label.textColor = .black
           return label
       }()
    //Second label
    lazy var secondLabel: UILabel = {
        let label = UILabel()
        label.text = "Create an account to continue!"
        label.font = UIFont(name: "Ubuntu-Regular", size: 16)
        label.textAlignment = .left
        label.numberOfLines = 1
        label.textColor = UIColor(red: 0.634, green: 0.627, blue: 0.659, alpha: 1)
        return label
    }()
    
    //ID number
    lazy var idLabel: UITextField = {
        let textField = UITextField()
        textField.placeholder = "ID number"
        textField.font = UIFont(name: "Ubuntu-Regular", size: 16)
        textField.textColor = UIColor(red: 0.634, green: 0.627, blue: 0.659, alpha: 1)
        textField.textAlignment = .center
        textField.layer.cornerRadius = 16
        textField.layer.backgroundColor = UIColor(red: 0.977, green: 0.976, blue: 0.98, alpha: 1).cgColor
        textField.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 18.0, y: 19.0, width: 20, height: 18))
        let image = UIImage(named: "id")
        imageView.image = image
        textField.leftView = imageView
        
        return textField
    }()
    
    //FullName
    lazy var fullnameLabel: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Full Name"
        textField.font = UIFont(name: "Ubuntu-Regular", size: 16)
        textField.textColor = UIColor(red: 0.634, green: 0.627, blue: 0.659, alpha: 1)
        textField.textAlignment = .center
        textField.layer.cornerRadius = 16
        textField.layer.backgroundColor = UIColor(red: 0.977, green: 0.976, blue: 0.98, alpha: 1).cgColor
        textField.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 18.0, y: 19.0, width: 20, height: 18))
        let image = UIImage(named: "name")
        imageView.image = image
        textField.leftView = imageView
        return textField
    }()
    
    //phone number
    lazy var phoneLabel: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Phone Number"
        textField.font = UIFont(name: "Ubuntu-Regular", size: 16)
        textField.textColor = UIColor(red: 0.634, green: 0.627, blue: 0.659, alpha: 1)
        textField.textAlignment = .center
        textField.layer.cornerRadius = 16
        textField.layer.backgroundColor = UIColor(red: 0.977, green: 0.976, blue: 0.98, alpha: 1).cgColor
        textField.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 18.0, y: 19.0, width: 20, height: 18))
        let image = UIImage(named: "phone")
        imageView.image = image
        textField.leftView = imageView
        return textField
    }()
    
    //Email
    lazy var emailLabel: UITextField = {
           let textField = UITextField()
           textField.placeholder = "Email"
           textField.font = UIFont(name: "Ubuntu-Regular", size: 16)
           textField.textColor = UIColor(red: 0.634, green: 0.627, blue: 0.659, alpha: 1)
           textField.textAlignment = .center
           textField.layer.cornerRadius = 16
           textField.layer.backgroundColor = UIColor(red: 0.977, green: 0.976, blue: 0.98, alpha: 1).cgColor
        textField.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 18.0, y: 19.0, width: 20, height: 18))
        let image = UIImage(named: "email")
        imageView.image = image
        textField.leftView = imageView
           return textField
       }()
    
    //Create password
    lazy var passwordLabel: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Create Password"
              //label.attributedText = NSMutableAttributedString(string: "Create Password")
        textField.font = UIFont(name: "Ubuntu-Regular", size: 16)
        textField.textColor = UIColor(red: 0.634, green: 0.627, blue: 0.659, alpha: 1)
        textField.textAlignment = .center
        textField.layer.cornerRadius = 16
        textField.layer.backgroundColor = UIColor(red: 0.977, green: 0.976, blue: 0.98, alpha: 1).cgColor
        textField.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 18))
        let image = UIImage(named: "pass")
        imageView.image = image
        textField.leftView = imageView
        
        textField.rightViewMode = UITextField.ViewMode.always
        let imageViewR = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let imageR = UIImage(named: "passno")
        imageViewR.image = imageR
        textField.rightView = imageViewR
              return textField
          }()
    //checkbox
   
    lazy var checkBox: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "box"), for: .normal)
        button.setBackgroundImage(UIImage(named: "checkBox"), for: .selected)
        
       return button
    }()
    
    //terms and conditions
    lazy var termsLabel: UILabel = {
        let label = UILabel()
        label.text = "By creating an account, you aggree to our Terms and Conditions"
        label.font = UIFont(name:"Manrope-Medium",size:14)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.textColor = UIColor(red: 0.129, green: 0.124, blue: 0.196, alpha: 1)
        return label
    }()
    
    //Sign Up button
    lazy var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Ubuntu-Bold", size: 16)
        button.backgroundColor = UIColor(red: 0, green: 0.533, blue: 0.475, alpha: 1)
        button.layer.cornerRadius = 16
        return button
    }()
    
    //already have account
    lazy var accountLabel: UILabel = {
        let label = UILabel()
        label.text = "Already have an account? Login"
        label.font = UIFont(name: "Ubuntu-Regular", size: 16)
        label.textAlignment = .center
        label.textColor = UIColor(red: 0.612, green: 0.639, blue: 0.686, alpha: 1)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    
        
    }
    
    func setupView() {
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(idLabel)
        view.addSubview(fullnameLabel)
        view.addSubview(phoneLabel)
        view.addSubview(emailLabel)
        view.addSubview(passwordLabel)
        view.addSubview(checkBox)
        view.addSubview(termsLabel)
        view.addSubview(signUpButton)
        view.addSubview(accountLabel)
        
        firstLabel.snp.makeConstraints { make in
            make.height.equalTo(32)
            make.width.equalTo(176)
            make.top.equalToSuperview().offset(116)
            make.leading.equalToSuperview().offset(32)
            make.trailing.equalToSuperview().offset(167)
        }
        
        secondLabel.snp.makeConstraints { make in
            make.width.equalTo(222)
            make.height.equalTo(26)
            make.top.equalTo(firstLabel).inset(8)
            make.leading.equalToSuperview().offset(32)
            make.bottom.equalToSuperview().offset(-630)
            make.trailing.equalToSuperview().offset(121)
        }
        
        idLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(32)
            make.top.equalTo(secondLabel.snp.bottom).offset(32)
            make.width.equalTo(311)
            make.height.equalTo(56)
        }
        
        fullnameLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(32)
            make.top.equalTo(idLabel.snp.bottom).offset(16)
            make.width.equalTo(311)
            make.height.equalTo(56)
        }
        
        phoneLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(32)
            make.top.equalTo(fullnameLabel.snp.bottom).offset(16)
            make.width.equalTo(311)
            make.height.equalTo(56)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(32)
            make.top.equalTo(phoneLabel.snp.bottom).offset(16)
            make.width.equalTo(311)
            make.height.equalTo(56)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(32)
            make.top.equalTo(emailLabel.snp.bottom).offset(16)
            make.width.equalTo(311)
            make.height.equalTo(56)
        }
        
        checkBox.snp.makeConstraints { make in
            make.width.height.equalTo(24)
            make.top.equalTo(passwordLabel.snp.bottom).offset(40)
            make.leading.equalToSuperview().offset(319)
        }
        
        termsLabel.snp.makeConstraints { make in
            make.height.equalTo(44)
            make.width.equalTo(271)
            make.leading.equalToSuperview().offset(72)
            make.trailing.equalToSuperview().offset(-32)
            make.top.equalTo(passwordLabel.snp.bottom).offset(40)
        }
        
        signUpButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(311)
            make.height.equalTo(56)
            make.bottom.equalToSuperview().offset(-82)
        }
        
        accountLabel.snp.makeConstraints { make in
            make.height.equalTo(24)
            make.width.equalTo(229)
            make.top.equalTo(signUpButton.snp.bottom).offset(24)
            make.leading.trailing.equalToSuperview().inset(73)
            
        }
    signUpButton.addTarget(self, action: #selector(signupButtonTaped ), for: .touchUpInside)
    checkBox.addTarget(self, action: #selector(checkboxTapped), for: .touchUpInside)
    signUpButton.isEnabled = false
    idLabel.addTarget(self, action: #selector(editingChanged(_:)), for: .editingChanged)
    fullnameLabel.addTarget(self, action: #selector(editingChanged(_:)), for: .editingChanged)
    passwordLabel.addTarget(self, action: #selector(editingChanged(_:)), for: .editingChanged)
    phoneLabel.addTarget(self, action: #selector(editingChanged(_:)), for: .editingChanged)
    emailLabel.addTarget(self, action: #selector(editingChanged(_:)), for: .editingChanged)
        
    }
    
    @objc private func signupButtonTaped() {
        let page = UIStoryboard(name: "Main", bundle: nil)
        let controller = page.instantiateViewController(identifier: "Home") as! HomePageViewController
        self.present(controller, animated: true, completion: nil )
           print("Homepage")
       }
    
   @objc private  func checkboxTapped(sender: UIButton) {
   sender.isSelected = !sender.isSelected
  }
   @objc private  func editingChanged(_ textField: UITextField) {
    
        if textField.text?.count == 1 {
            if textField.text?.first == " " {
                textField.text = ""
                return
            }
        }
        guard
            let id = idLabel.text, !id.isEmpty,
            let name = fullnameLabel.text, !name.isEmpty,
            let phone = phoneLabel.text, !phone.isEmpty,
            let email = emailLabel.text, !email.isEmpty,
            let pass = passwordLabel.text, !pass.isEmpty
        else {
            signUpButton.isEnabled = false
            return
        }
        signUpButton.isEnabled = true    }
}
