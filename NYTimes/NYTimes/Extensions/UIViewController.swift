//
//  UIViewController.swift
//  NYTimes
//
//  Created by Shamseer Ali on 28/06/2021.
//

import UIKit

extension UIViewController {
    static func instantiate(with storyboard: StoryboardName) -> Self {
        let viewControllerName = String(describing: self)
        return UIStoryboard(name: storyboard).instantiateViewController(withIdentifier: viewControllerName) as! Self
    }
}
