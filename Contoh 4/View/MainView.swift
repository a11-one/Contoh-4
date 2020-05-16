//
//  MainView.swift
//  Contoh 4
//
//  Created by Aldowan Apta Premala on 16/05/20.
//  Copyright © 2020 Aldowan Apta Premala. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    let MainText: UILabel = {
        let label = UILabel()
        label.text = "This is just a test"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let MainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sampleimage")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let MainButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Move", for: .normal)
        button.backgroundColor = UIColor(red: 147/255, green: 16/255, blue: 216/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(MainText)
        self.addSubview(MainImage)
        self.addSubview(MainButton)

        self.MainText.topAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive = true
        self.MainText.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 50).isActive = true
        
        self.MainImage.topAnchor.constraint(equalTo: self.MainText.bottomAnchor, constant: 16).isActive = true
        self.MainImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        self.MainImage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        self.MainImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.MainButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 64).isActive = true
        self.MainButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -64).isActive = true
        self.MainButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -64).isActive = true
        self.MainButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
