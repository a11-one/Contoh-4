//
//  ViewController.swift
//  Contoh 4
//
//  Created by Aldowan Apta Premala on 10/05/20.
//  Copyright © 2020 Aldowan Apta Premala. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    private var mainView: MainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView = MainView(frame: self.view.frame)
        self.view = self.mainView

        self.view.backgroundColor = .white
        self.title = "Main Screen"
        self.navigationController?.navigationBar.isTranslucent =  false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 147/255, green: 16/255, blue: 216/255, alpha: 1)
        self.navigationController?.navigationBar.barStyle = .black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = .white
        
        self.mainView.MainButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)

    }
    
    @objc private func ButtonPressed(){
        self.navigationController?.pushViewController(DetailController(), animated: true)
    }


}

