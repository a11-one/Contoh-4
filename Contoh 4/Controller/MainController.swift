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
    
    
    let days = ["Monday",
                "Tuesday",
                "Wednesday",
                "Thursday",
                "Friday",
                "Saturday",
                "Sunday"]
    
    var selectedDay: String?
    
    func createDayPicker() {
        
        let dayPicker = UIPickerView()
        dayPicker.delegate = self
        
        mainView.favoriteDayTextField.inputView = dayPicker
        
    }
    
    func createToolbar() {
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dismissKeyboard))
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        mainView.favoriteDayTextField.inputAccessoryView = toolBar
        
    }
    
    @objc func dismissKeyboard() {
        
        view.endEditing(true)
        
    }

    
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
        
        createDayPicker()
        createToolbar()
        

    }
    
    @objc private func ButtonPressed(){
        self.navigationController?.pushViewController(DetailController(), animated: true)
    }


}

extension MainController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return days[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedDay = days[row]
        mainView.favoriteDayTextField.text = selectedDay
    }
    
    
}

