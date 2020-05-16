//
//  ViewController.swift
//  Contoh 4
//
//  Created by Aldowan Apta Premala on 10/05/20.
//  Copyright © 2020 Aldowan Apta Premala. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.title = "Main Screen"
        self.navigationController?.navigationBar.isTranslucent =  false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 147/255, green: 16/255, blue: 216/255, alpha: 1)
        self.navigationController?.navigationBar.barStyle = .black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = .white
        
        self.view.addSubview(MainText)
        self.view.addSubview(MainImage)
        self.view.addSubview(MainButton)

        self.MainText.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        self.MainText.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50).isActive = true
        
        self.MainImage.topAnchor.constraint(equalTo: self.MainText.bottomAnchor, constant: 16).isActive = true
        self.MainImage.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 16).isActive = true
        self.MainImage.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -16).isActive = true
        self.MainImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.MainButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 64).isActive = true
        self.MainButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -64).isActive = true
        self.MainButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -64).isActive = true
        self.MainButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.MainButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)

    }
    
    @objc private func ButtonPressed(){
        self.navigationController?.pushViewController(DetailController(), animated: true)
    }


}

