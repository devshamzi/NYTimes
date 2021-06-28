//
//  Response.swift
//  NYTimes
//
//  Created by Shamseer Ali on 29/06/2021.
//

import Foundation

struct Response<T: Codable>: Codable {
    var results: T?
    var status: String?
    var num_results: Int?
  
    
    private enum CodingKeys:String,CodingKey{
        case results
        case status
        case num_results

    }
}
