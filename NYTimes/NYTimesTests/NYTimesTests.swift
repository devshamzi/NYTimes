//
//  NYTimesTests.swift
//  NYTimesTests
//
//  Created by Shamseer Ali on 28/06/2021.
//

import XCTest
import Alamofire

@testable import NYTimes

class NYTimesTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func checkInternetConnection() throws{
        try XCTSkipUnless(
            NetworkReachabilityManager()?.isReachable ?? false,
            "Internet connection required")
        
    }
    
    
    func testApiCallCompletes() throws {
        // given
        let urlString = BaseURL.ApiBaseUrl.url
        let url = URL(string: urlString)!
        var statusCode: Int?
        var responseError: Error?
        
        // when
        var headers: HTTPHeaders?
        
        try checkInternetConnection()
        
        let promise = expectation(description: "Completion handler invoked")
        
        AF.request(url, method: .get, parameters:  nil , encoding: JSONEncoding.default, headers: headers).responseData{  response in
            responseError =  response.error
            
            statusCode = response.response?.statusCode ?? 0
            if statusCode == 200{
                promise.fulfill()
            }else{
                XCTFail("Status code: \(statusCode ?? 0)")
            }
        }
        wait(for: [promise], timeout: 5)
        
        // then
        XCTAssertNil(responseError)
        XCTAssertEqual(statusCode, 200)
    }

}
