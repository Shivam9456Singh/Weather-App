//
//  ViewController.swift
//  Weather
//
//  Created by Shivam Kumar on 24/09/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
        homeView.searchBar.delegate = self
    }
    
    func setupViews(){
        homeView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(homeView)
        
        NSLayoutConstraint.activate([
            homeView.topAnchor.constraint(equalTo: view.topAnchor),
            homeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            homeView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(homeView.searchBar.text!)
        homeView.searchBar.endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        homeView.searchBar.text = ""
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if homeView.searchBar.text != "" {
            return true
        }
        else{
            homeView.searchBar.placeholder = "Add Location"
            return false
        }
    }
        
        
}


