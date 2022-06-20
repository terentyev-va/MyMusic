//
//  SignUpViewController.swift
//  MyMusic
//
//  Created by Вячеслав Терентьев on 20.06.2022.
//

import UIKit

class SignUpViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let backgroundView: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let registrationLabel: UILabel = {
       let label = UILabel()
        label.text = "Registration"
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let firstNameTextfield = UITextField(placeHolder: "First Name")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        
        view.backgroundColor = .gray
    }
}

extension SignUpViewController {
    
    private func setConstraints() {
        
    }
}
