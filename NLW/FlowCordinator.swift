//
//  FlowCordinator.swift
//  NLW
//
//  Created by Rafael Guilherme on 09/12/24.
//

import Foundation
import UIKit

class FlowCordinator {
    private var navigationFlowController: UINavigationController?
    
    public init() {
        
    }
    
    func start() -> UINavigationController? {
        let startViewController = UIViewController()
        startViewController.view.backgroundColor = .red
        
        self.navigationFlowController = UINavigationController(rootViewController: startViewController)
        
        return navigationFlowController
    }
}
