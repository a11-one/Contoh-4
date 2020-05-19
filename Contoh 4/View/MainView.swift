//
//  MainView.swift
//  Contoh 4
//
//  Created by Aldowan Apta Premala on 16/05/20.
//  Copyright © 2020 Aldowan Apta Premala. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    let Scroll: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .yellow
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let MainText: UILabel = {
        let label = UILabel()
        label.text = "This is just a test."
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor(red: 147/255, green: 16/255, blue: 216/255, alpha: 1)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let MainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sampleimage")
        imageView.contentMode = .scaleToFill
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
    
    let Picker: UIDatePicker = {
        let datePicker = UIDatePicker()
        //datePicker.frame = CGRect(x: 100, y: 500, width: 300, height: 200)
        datePicker.datePickerMode = .dateAndTime
        datePicker.timeZone = NSTimeZone.local
        datePicker.backgroundColor = UIColor.white
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        return datePicker
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(Scroll)
        self.Scroll.addSubview(MainText)
        self.Scroll.addSubview(MainImage)
        self.Scroll.addSubview(MainButton)
        self.Scroll.addSubview(Picker)
        
        self.Scroll.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        self.Scroll.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.Scroll.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        self.Scroll.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
               
        self.MainText.topAnchor.constraint(equalTo: self.Scroll.topAnchor, constant: 50).isActive = true
        self.MainText.leftAnchor.constraint(equalTo: self.Scroll.leftAnchor, constant: 30).isActive = true
        self.MainText.rightAnchor.constraint(equalTo: self.Scroll.rightAnchor, constant: -30).isActive = true
        
        self.MainImage.topAnchor.constraint(equalTo: self.MainText.bottomAnchor, constant: 16).isActive = true
        self.MainImage.leftAnchor.constraint(equalTo: self.Scroll.leftAnchor, constant: 16).isActive = true
        self.MainImage.rightAnchor.constraint(equalTo: self.Scroll.rightAnchor, constant: -16).isActive = true
        self.MainImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.MainImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.MainButton.leftAnchor.constraint(equalTo: self.Scroll.leftAnchor, constant: 64).isActive = true
        self.MainButton.rightAnchor.constraint(equalTo: self.Scroll.rightAnchor, constant: -64).isActive = true
        self.MainButton.topAnchor.constraint(equalTo: self.MainImage.bottomAnchor, constant: 64).isActive = true
        //self.MainButton.bottomAnchor.constraint(equalTo: self.Scroll.bottomAnchor, constant: -64).isActive = true
        self.MainButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.Picker.topAnchor.constraint(equalTo: self.MainButton.bottomAnchor, constant: 50).isActive = true
        //self.Picker.leftAnchor.constraint(equalTo: self.Scroll.leftAnchor, constant: 30).isActive = true
        //self.Picker.rightAnchor.constraint(equalTo: self.Scroll.rightAnchor, constant: -30).isActive = true
        self.Picker.heightAnchor.constraint(equalToConstant: 200).isActive = true
        self.Picker.widthAnchor.constraint(equalToConstant: 350).isActive = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
