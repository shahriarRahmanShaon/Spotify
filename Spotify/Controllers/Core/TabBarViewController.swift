//
//  TabBarController.swift
//  Spotify
//
//  Created by sergio shaon on 23/6/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        setupViews()
    }
    
    func setupTabBar(){
        tabBar.tintColor = .red
        tabBar.isTranslucent = false
        tabBar.backgroundColor = .white
    }

    func setupViews(){
        let vc1 = HomeViewController()
        let vc2 = SearchViewController()
        let vc3 = LibraryViewController()
        
        vc1.title = "Home"
        vc2.title = "Search"
        vc3.title = "Library"
        
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        vc3.navigationItem.largeTitleDisplayMode = .always
        
        let nc1 = UINavigationController(rootViewController: vc1)
        let nc2 = UINavigationController(rootViewController: vc2)
        let nc3 = UINavigationController(rootViewController: vc3)
        
        nc1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nc2.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        nc3.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "house"), tag: 3)
        
        nc1.navigationBar.prefersLargeTitles = true
        nc2.navigationBar.prefersLargeTitles = true
        nc3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nc1, nc2, nc3], animated: false)
    }
}
