//
//  Connectivity.swift
//  NYTimes
//
//  Created by Shamseer Ali on 02/07/2021.
//

import Foundation

import Foundation
import Alamofire
class Connectivity {
    class var isConnectedToInternet:Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
}
