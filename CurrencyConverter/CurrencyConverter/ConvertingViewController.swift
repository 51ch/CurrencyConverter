//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Admin on 10/08/2019.
//  Copyright © 2019 Sergey. All rights reserved.
//

import UIKit

class ConvertingViewController: UIViewController {
    
    var LeftCurrencyValueTextField: UITextField = {
        let textField = UITextField()
        textField.textAlignment = NSTextAlignment.center
        textField.text = "0"
        textField.adjustsFontSizeToFitWidth = true
        //textField.sizeToFit()
        //textField.font = UIFont.boldSystemFont(ofSize: 14)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    var RightCurrencyValueLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "0.0"
        label.adjustsFontSizeToFitWidth = true
        //label.sizeToFit()
        //label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var LeftCurrencyNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "RUB"
        label.adjustsFontSizeToFitWidth = true
        //label.sizeToFit()
        //label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var RightCurrencyNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "USD"
        label.adjustsFontSizeToFitWidth = true
        //label.sizeToFit()
        //label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var LeftCurrencyChangeButton: UIButton = {
        let button = UIButton(type: .system)
        button.titleLabel?.textAlignment = NSTextAlignment.center
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.setTitle("Change currency", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(OpenCurrencyListVC(ParameterSender:)), for: .touchUpInside)
        return button
    }()
    var RightCurrencyChangeButton: UIButton = {
        let button = UIButton(type: .system)
        button.titleLabel?.textAlignment = NSTextAlignment.center
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.setTitle("Change currency", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(OpenCurrencyListVC(ParameterSender:)), for: .touchUpInside)
        return button
    }()
    var SwapCurrencyButton: UIButton = {
       let button = UIButton(type: .system)
        button.titleLabel?.textAlignment = NSTextAlignment.center
        button.setTitle("<-->", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var dispbut = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Calculator"

        self.view.addSubview(self.LeftCurrencyValueTextField)
        self.view.addSubview(self.RightCurrencyValueLabel)
        self.view.addSubview(self.LeftCurrencyNameLabel)
        self.view.addSubview(self.RightCurrencyNameLabel)
        self.view.addSubview(self.LeftCurrencyChangeButton)
        self.view.addSubview(self.RightCurrencyChangeButton)
        self.view.addSubview(self.SwapCurrencyButton)
        createConstraints()
        
    }
    
    @objc func OpenCurrencyListVC(ParameterSender: Any){
        let newVC = CurrencyListViewController()
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    func createConstraints(){
        LeftCurrencyValueTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        LeftCurrencyValueTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        LeftCurrencyValueTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        LeftCurrencyValueTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/8).isActive = true
        
        RightCurrencyValueLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        RightCurrencyValueLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        RightCurrencyValueLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        RightCurrencyValueLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/8).isActive = true
        
        SwapCurrencyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        SwapCurrencyButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        SwapCurrencyButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/8).isActive = true
        SwapCurrencyButton.topAnchor.constraint(equalTo: LeftCurrencyValueTextField.bottomAnchor, constant: 8).isActive = true
        
        LeftCurrencyNameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        LeftCurrencyNameLabel.topAnchor.constraint(equalTo: SwapCurrencyButton.bottomAnchor, constant: 8).isActive = true
        LeftCurrencyNameLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        LeftCurrencyNameLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/8).isActive = true
        
        RightCurrencyNameLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        RightCurrencyNameLabel.topAnchor.constraint(equalTo: SwapCurrencyButton.bottomAnchor, constant: 8).isActive = true
        RightCurrencyNameLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        RightCurrencyNameLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/8).isActive = true
        
        LeftCurrencyChangeButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        LeftCurrencyChangeButton.topAnchor.constraint(equalTo: LeftCurrencyNameLabel.bottomAnchor, constant: 8).isActive = true
        LeftCurrencyChangeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        LeftCurrencyChangeButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/8).isActive = true
        
        RightCurrencyChangeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        RightCurrencyChangeButton.topAnchor.constraint(equalTo: RightCurrencyNameLabel.bottomAnchor, constant: 8).isActive = true
        RightCurrencyChangeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        RightCurrencyChangeButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/8).isActive = true
        
    }
    func calculate(target: UITextField){
    }


}

