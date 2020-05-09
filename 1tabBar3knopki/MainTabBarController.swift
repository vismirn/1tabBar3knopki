//
//  MainTabBarController.swift
//  1tabBar3knopki
//
//  Created by Viktor Smirnov on 09.05.2020.
//  Copyright © 2020 Viktor Smirnov. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "firstVC") as! FirstViewController
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        let thriedVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "thriedVC") as! ThriedViewController
        
//        tabBar.backgroundColor = .blue
//        tabBar.barTintColor = .orange
//        tabBar.tintColor = .green
        
        guard let firstImage = UIImage(systemName: "music.house") else { return }
        guard let secondImage = UIImage(systemName: "person.crop.square") else { return }
        guard let thriedImage = UIImage(systemName: "music.house") else { return }
        viewControllers = [generationNC(rootViewController: firstVC, image: firstImage, title:                          "Поиск"),
                           generationNC(rootViewController: secondVC, image: secondImage, title: "Контакты"),
                           generationNC(rootViewController: thriedVC, image: thriedImage, title: "Карта")]
    }


    
    
    func generationNC(rootViewController: UIViewController, image: UIImage, title: String) -> UINavigationController {
           
           let navigationVC = UINavigationController(rootViewController: rootViewController)
           
           navigationVC.tabBarItem.title = title
           navigationVC.tabBarItem.image = image
           navigationVC.navigationBar.prefersLargeTitles = true
           
           return navigationVC
       }

}
