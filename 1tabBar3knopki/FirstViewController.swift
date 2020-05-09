//
//  FirstViewController.swift
//  1tabBar3knopki
//
//  Created by Viktor Smirnov on 09.05.2020.
//  Copyright © 2020 Viktor Smirnov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupElements()
//        setupConstraints()
        
        tabBarItem.badgeColor = .blue
    }
    

}

//MARK: - Setup View

extension FirstViewController {
    func setupElements() {
    
        title = "Поиск"
        view.backgroundColor = .purple
        navigationItem.searchController = searchController
        navigationItem.title = "Введите в поиск"
    
        
        
    }
}

////MARK: - Setup Constraints
//
//extension FirstViewController {
//    func setupConstraints() {
//
//    }
//}
