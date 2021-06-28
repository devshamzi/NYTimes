//
//  HomeData.swift
//  NYTimes
//
//  Created by Shamseer Ali on 29/06/2021.
//

import Foundation

struct HomeData: Codable {
    
    var title : String?    
    private enum CodingKeys:String,CodingKey{
        case title
    }
}
