//
//  SceneDelegate.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/12/25.
//

import Swinject
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let container = Container()
        _ = Assembler(
            [
                ServicesAssembly(),
                MainTabAssembly()
            ],
            container: container)
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = container.resolve(MainTabController.self)
        window?.makeKeyAndVisible()
    }
}
