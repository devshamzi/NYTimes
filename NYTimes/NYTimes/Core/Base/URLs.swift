//
//  URLs.swift
//  NYTimes
//
//  Created by Shamzi on 29/06/2021.
//

import Foundation


enum BaseURL : String {
    
    case ApiBaseUrl
    
    var url : String{
        
        switch self {
        case .ApiBaseUrl:
            
            return "https://api.nytimes.com/svc/mostpopular/v2/viewed/1.json?api-key=g1L6nPHqj3pt15ly9Px2fpxKOnkccB2r"
        }
    }
    
}
