//
//  UIStoryboard.swift
//  NYTimes
//
//  Created by Shamseer Ali on 28/06/2021.
//

import UIKit

extension UIStoryboard {
    convenience init(name: StoryboardName, bundle: Bundle? = nil) {
        self.init(name: name.rawValue, bundle: bundle)
    }
}
