//
//  PageCell.swift
//  Contoh 4
//
//  Created by Aldowan Apta Premala on 16/08/20.
//  Copyright © 2020 Aldowan Apta Premala. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let imageIll: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "contohgambar1")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
        
    let desc: UILabel = {
        let subTitle = UILabel()
        subTitle.text = "Keterangan gambar 1"
        subTitle.textAlignment = .center
        subTitle.font = UIFont.systemFont(ofSize: 16)
        subTitle.textColor = UIColor.purple
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        return subTitle
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .yellow
        
        layout()
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout(){
        
        self.addSubview(imageIll)
        self.addSubview(desc)
                
        NSLayoutConstraint.activate([
            imageIll.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageIll.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageIll.heightAnchor.constraint(equalToConstant: 200),
            imageIll.widthAnchor.constraint(equalToConstant: 200)
         ])
        
        NSLayoutConstraint.activate([
            desc.topAnchor.constraint(equalTo: imageIll.bottomAnchor, constant: 50),
            desc.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
    }
    
}
