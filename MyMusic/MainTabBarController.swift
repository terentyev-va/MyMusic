//
//  MainTabBarController.swift
//  MyMusic
//
//  Created by Вячеслав Терентьев on 10.12.2022.
//

import UIKit

protocol MainTabBarControllerDelegate: AnyObject {
    func minimizedTrackDetailController()
}

class MainTabBarController: UITabBarController {
    
    var minimizedTopAnchorConstraints: NSLayoutConstraint!
    var maximizedTopAnchorConstraints: NSLayoutConstraint!
    private var bottomAnchorConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        setupViews()
        setupTrackDetailView()
    }
    
    private func setupTabBar() {
        tabBar.tintColor = #colorLiteral(red: 1, green: 0.1719063818, blue: 0.4505617023, alpha: 1)
        tabBar.backgroundColor = .systemGray6
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = UIColor.systemGray5.cgColor
    }
    
    private func setupViews() {
        
        let searchVC: SearchViewController = SearchViewController.loadFromStoryBoard()
        
//        let searchVC = SearchMusicViewController()
        let libraryVC = LibraryViewController()
        
        searchVC.navigationItem.title = "Search"
        libraryVC.navigationItem.title = "Library"
        
        let searchNavVC = UINavigationController(rootViewController: searchVC)
        let libraryNavVC = UINavigationController(rootViewController: libraryVC)

        searchNavVC.navigationBar.prefersLargeTitles = true
        libraryNavVC.navigationBar.prefersLargeTitles = true
        
        setViewControllers([searchNavVC, libraryNavVC], animated: true)
        
        guard let items = tabBar.items else { return }
        
        items[0].title = "Search"
        items[1].title = "Library"
        
        items[0].image = UIImage(named: "search")
        items[1].image = UIImage(named: "library")
    }
    
    private func setupTrackDetailView() {
        let trackDetailView: TrackDetailView = TrackDetailView.loadFromNib()
        trackDetailView.backgroundColor = .green
        trackDetailView.tabBarDelegate = self
//        trackDetailView.delegate =
        view.insertSubview(trackDetailView, belowSubview: tabBar)

        trackDetailView.translatesAutoresizingMaskIntoConstraints = false
        maximizedTopAnchorConstraints = trackDetailView.topAnchor.constraint(equalTo: view.topAnchor)
        minimizedTopAnchorConstraints = trackDetailView.topAnchor.constraint(equalTo: tabBar.topAnchor, constant: -64)
        bottomAnchorConstraint = trackDetailView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: view.frame.height)
        
        bottomAnchorConstraint.isActive = true
        maximizedTopAnchorConstraints.isActive = true
        
        trackDetailView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        trackDetailView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

//MARK: - MainTabBarControllerDelegate

extension MainTabBarController: MainTabBarControllerDelegate {
        
    func minimizedTrackDetailController() {
        
        maximizedTopAnchorConstraints.isActive = false
        minimizedTopAnchorConstraints.isActive = true
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.7,
                       initialSpringVelocity: 1,
                       options: .curveEaseInOut,
                       animations: {
            self.view.layoutIfNeeded()
        })
    }
}
