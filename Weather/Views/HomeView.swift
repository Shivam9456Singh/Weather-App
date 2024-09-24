//
//  HomeView.swift
//  Weather
//
//  Created by Shivam Kumar on 24/09/24.
//

import Foundation
import UIKit

class HomeView : UIView{
    
    let backgroundImage : UIImageView = {
       let backgroundImage = UIImageView()
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.image = .background
        backgroundImage.contentMode = .scaleAspectFill
        return backgroundImage
    }()
    
    
    let searchBar : UITextField = {
        let searchBar = UITextField()
        searchBar.placeholder = "Location"
        searchBar.borderStyle = .line
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.layer.cornerRadius = 20
        searchBar.font = .systemFont(ofSize: 20)
        searchBar.borderStyle = .roundedRect
        searchBar.returnKeyType = .search
        return searchBar
    }()
    let searchVectorImageView : UIImageView = {
        let searchImageView = UIImageView()
        searchImageView.image = UIImage(systemName: "magnifyingglass")
        searchImageView.contentMode = .scaleAspectFill
        searchImageView.translatesAutoresizingMaskIntoConstraints = false
        searchImageView.clipsToBounds = true
        searchImageView.tintColor = .systemBackground
        return searchImageView
    }()
    let locationVectorImageView : UIImageView = {
        let locationVector  = UIImageView()
        locationVector.image = UIImage(systemName: "location.circle")
        locationVector.contentMode = .scaleAspectFill
        locationVector.translatesAutoresizingMaskIntoConstraints = false
        locationVector.tintColor = .systemBackground
        return locationVector
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("(NSCoder:) not implemented")
    }
    
    func setupViews(){
        addSubview(backgroundImage)
        sendSubviewToBack(backgroundImage)
        addSubview(searchVectorImageView)
        addSubview(locationVectorImageView)
        addSubview(searchBar)
    }
    
    func setupConstraints(){
     
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
            searchBar.topAnchor.constraint(equalTo: topAnchor,constant: 100),
            searchBar.centerXAnchor.constraint(equalTo: centerXAnchor),
            searchBar.widthAnchor.constraint(equalToConstant: 270),
            
            locationVectorImageView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            locationVectorImageView.trailingAnchor.constraint(equalTo: searchBar.leadingAnchor, constant: -10),
            locationVectorImageView.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            locationVectorImageView.heightAnchor.constraint(equalToConstant: 40),
            
            searchVectorImageView.leadingAnchor.constraint(equalTo: searchBar.trailingAnchor, constant: 10),
            searchVectorImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            searchVectorImageView.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            searchVectorImageView.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    
}
