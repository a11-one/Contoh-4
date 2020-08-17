//
//  DetailController.swift
//  Contoh 4
//
//  Created by Aldowan Apta Premala on 10/05/20.
//  Copyright © 2020 Aldowan Apta Premala. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    let gambar = ["contohgambar1","contohgambar2"]
    let desc = ["Keterangan gambar 1","Keterangan gambar 2"]
    let sub = ["Tombol 1","Tombol 2"]
    let warna = [UIColor.red,UIColor.blue]
    
    let appName: UILabel = {
        let judul = UILabel()
        judul.text = "Punya Aldo"
        judul.textAlignment = .center
        judul.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        judul.textColor = UIColor.green
        judul.translatesAutoresizingMaskIntoConstraints = false
        return judul
    }()
    
    let skipButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tombol 1", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.tintColor = .white
        button.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        button.backgroundColor = UIColor.red
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func pressed(){
        let home = MainController()
        home.modalTransitionStyle = .crossDissolve
        home.modalPresentationStyle = .overFullScreen
        show(home, sender: nil)
    }
    
    private let indicator: UIPageControl = {
        let ind = UIPageControl()
        ind.currentPage = 0
        ind.numberOfPages = 2
        ind.currentPageIndicatorTintColor = UIColor.orange
        ind.pageIndicatorTintColor = .gray
        ind.translatesAutoresizingMaskIntoConstraints = false
        return ind
    }()

    let collection: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        return layout
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.title = "Detail Screen"
        
        collection.itemSize = CGSize(width: view.frame.width, height: view.frame.height)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collection)
        collectionView.systemLayoutSizeFitting(CGSize(width: view.frame.width, height: view.frame.height))
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1),
            collectionView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        collectionView.dataSource = self
        
        layout()

    }
        
    private func layout(){
        
        view.addSubview(skipButton)
        view.addSubview(appName)
        view.addSubview(indicator)
        
        NSLayoutConstraint.activate([
           skipButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
           skipButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
           skipButton.widthAnchor.constraint(equalToConstant: 200),
           skipButton.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        NSLayoutConstraint.activate([
            appName.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            appName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            indicator.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            indicator.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}

extension DetailController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gambar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PageCell
        cell.imageIll.image = UIImage(named: gambar[indexPath.item])
        cell.desc.text = desc[indexPath.item]
        skipButton.setTitle(sub[indexPath.item], for: .normal)
        skipButton.backgroundColor = warna[indexPath.item]
        indicator.currentPage = indexPath.item
        print(indexPath.item)
        return cell
    }
    
}
