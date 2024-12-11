//
//  NearbyFlowController.swift
//  NLW
//
//  Created by Rafael Guilherme on 09/12/24.
//

import Foundation
import UIKit

class NearbyFlowController {
    private var navigationController: UINavigationController?
    
    public init() {
    }
    
    func start() -> UINavigationController? {
        let contentView = SplashView()
        let startViewController = SplashViewController(contentView: contentView, delegate: self)
        self.navigationController = UINavigationController(rootViewController: startViewController)

        return navigationController
    }
}

extension NearbyFlowController: SplashFlowDelegate {
    func decideNavigationFlow() {
        let contentview = WelcomeView()
        let welcomeViewController = WelcomeViewController(contentView: contentview)
        navigationController?.pushViewController(welcomeViewController, animated: true)
    }
}
