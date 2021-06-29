//
//  HomeService.swift
//  NYTimes
//
//  Created by Shamseer Ali on 29/06/2021.
//

import RxSwift

struct HomeService: Wrapable {
    
    static let shared = HomeService()
    
    private init() {}
    
    func getHomeData() -> Observable<AFResult<Response<[HomeData]>>> {

        return request(url: BaseURL.ApiBaseUrl.url, param: nil, method: .get)
    }
    
}
