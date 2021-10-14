//
//  OnboardingViewController.swift
//  TechTest
//
//  Created by tse on 10/14/21.
//  Copyright © 2021 marzhan. All rights reserved.
//
import SnapKit
import UIKit



class OnboardingViewController: UIViewController {
    //backgraound image
    let imageWidth: CGFloat = 375
    let imageHeight: CGFloat = 812
    lazy var backgroundImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "background"))
        return imageView
    }()
    
    //Welcome text
    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to UGranted"
        label.frame = CGRect(x: 0, y: 0, width: 295, height: 32)
        label.font = UIFont(name:"Ubuntu-Bold",size:24)
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        return label
    }()
    
    //Text under welcome text
    lazy var someText: UILabel = {
        let label = UILabel()
        label.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard"
        label.font = UIFont(name:"Ubuntu-Regular",size:14)
        label.textAlignment = .center
        label.numberOfLines = 3
        label.textColor = UIColor(red: 0.634, green: 0.627, blue: 0.659, alpha: 1)
        return label
    }()
    
    //button get started
    lazy var getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Get Start", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Ubuntu-Bold", size: 16)
        button.backgroundColor = UIColor(red: 0, green: 0.533, blue: 0.475, alpha: 1)
        button.layer.cornerRadius = 16
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
       view.addSubview(backgroundImage)
       view.addSubview(welcomeLabel)
       view.addSubview(someText)
        view.addSubview(getButton)
        
        backgroundImage.snp.makeConstraints { make in
            make.width.equalTo(imageWidth)
            make.height.equalTo(imageHeight)
            make.leading.trailing.equalToSuperview()
            make.top.bottom.equalToSuperview()
        }
        
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(498)
            make.leading.trailing.equalToSuperview().inset(40)
            make.bottom.equalToSuperview().offset(-282)
            
        }
        
        someText.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(40)
            make.bottom.equalToSuperview().offset(-206)
            make.top.equalTo(welcomeLabel).inset(16)
            
        }
        
        getButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(311)
            make.height.equalTo(56)
            make.bottom.equalToSuperview().inset(64)
            
        }
        getButton.addTarget(self, action: #selector(buttonTaped ), for: .touchUpInside)
    }
    
    @objc private func buttonTaped() {
        let home = UIStoryboard(name: "Main", bundle: nil)
        let controller = home.instantiateViewController(identifier: "SignUp") as! SignUpViewController
        self.present(controller, animated: true, completion: nil )
        print("Sign page")
    }
    
}

