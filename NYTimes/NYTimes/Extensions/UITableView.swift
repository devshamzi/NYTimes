//
//  UITableView.swift
//  NYTimes
//
//  Created by Shamseer Ali on 28/06/2021.
//

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell>(_ type: T.Type) where T: ReusableView {
        let nib = UINib(nibName: T.reuseIdentifier, bundle: nil)
        self.register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
}
