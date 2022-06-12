//
//  SceneDelegate.swift
//  Albom-2
//
//  Created by Мария Вольвакова on 09.06.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let tabBarController = UITabBarController()
   
        let mediaViewController = MediaViewController()
        
        mediaViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(systemName: "photo.on.rectangle"), tag: 0)
        
        let forYouViewController = ForYouViewController()
        
        forYouViewController.tabBarItem = UITabBarItem(title: "Для Вас", image: UIImage(systemName: "heart.text.square.fill"), tag: 1)
               
        let albumsViewController = AlbumsViewController()
        albumsViewController.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(systemName: "square.stack.fill"), tag: 2)
        
        
        let searchViewController = SearchViewController()
        searchViewController.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), tag: 3)
        
        
        let controllers = [
            mediaViewController,
            forYouViewController,
            albumsViewController,
            searchViewController
            ]
        
        tabBarController.viewControllers = controllers.map { UINavigationController(rootViewController: $0)}

        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        guard let _ = (scene as? UIWindowScene) else { return }
        
    }

}

