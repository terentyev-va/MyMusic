//
//  MainTabBarController.swift
//  MyMusic
//
//  Created by Вячеслав Терентьев on 10.12.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        setupViews()
    }
    
    private func setupTabBar() {
        tabBar.tintColor = #colorLiteral(red: 1, green: 0.1719063818, blue: 0.4505617023, alpha: 1)
    }
    
    private func setupViews() {
        
        let searchVC: SearchViewController = SearchViewController.loadFromStoryBoard()
        
//        let searchVC = SearchMusicViewController()
        let libraryVC = LibraryViewController()
        
//        searchVC.navigationItem.title = "Search"
//        libraryVC.navigationItem.title = "Library"
        
        let searchNavVC = UINavigationController(rootViewController: searchVC)
        let libraryNavVC = UINavigationController(rootViewController: libraryVC)

//        searchNavVC.navigationBar.prefersLargeTitles = true
//        libraryNavVC.navigationBar.prefersLargeTitles = true
        
        setViewControllers([searchNavVC, libraryNavVC], animated: true)
        
        guard let items = tabBar.items else { return }
        
        items[0].title = "Search"
        items[1].title = "Library"
        
        items[0].image = UIImage(named: "search")
        items[1].image = UIImage(named: "library")
    }
}
