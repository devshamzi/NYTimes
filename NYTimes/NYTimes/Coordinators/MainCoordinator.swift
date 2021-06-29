//
//  MainCoordinator.swift
//  NYTimes
//
//  Created by Shamseer Ali on 28/06/2021.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        navigationController.navigationBar.isHidden = true
        self.navigationController = navigationController
    }

    func goTohome() {
        let homeVC = HomeViewController.instantiate(with: .Home)
        homeVC.coordinator = self
        navigationController.pushViewController(homeVC, animated: true)
    }
    
    func goToDetail() {
        let detailVC = DetailViewController.instantiate(with: .Home)
        detailVC.coordinator = self
        navigationController.pushViewController(detailVC, animated: true)
    }
}
