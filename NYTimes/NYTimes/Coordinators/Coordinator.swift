//
//  Coordinator.swift
//  NYTimes
//
//  Created by Shamseer Ali on 28/06/2021.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func goTohome()
    func goToDetail()
}
