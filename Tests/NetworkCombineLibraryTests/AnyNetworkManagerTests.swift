//  Created by Steven Curtis

import XCTest
import Combine
@testable import NetworkCombineLibrary

class AnyNetworkManagerTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    var urlSession: MockURLSession?
    var networkManager: AnyNetworkManager<MockURLSession>?
    var res: AnyCancellable?
    
    func testGetMethodNoBody() {
        urlSession = MockURLSession()
        let mockNetworkManager = MockNetworkManager(session: urlSession!)
        mockNetworkManager.outputData = Data(userString.utf8)
        
        networkManager = AnyNetworkManager(manager: mockNetworkManager)
        
        let expect = expectation(description: #function)
        
        let url = URL(fileURLWithPath: "http://www.google.com")
        res = networkManager?.fetch(url: url, method: .get)
            .sink(
                receiveCompletion: {comp in
                    if comp != .finished {
                        XCTFail("Error")
                    }
            },
                receiveValue: {
                    val in
                    let decode = JSONDecoder()
                    let decoded = try! decode.decode(User.self, from: val)
                    XCTAssertEqual(decoded, user)
                    expect.fulfill()
            })
        waitForExpectations(timeout: 3.0)
    }
    
    func testSuccessfulGetURLResponse() {
        urlSession = MockURLSession()
        let mockNetworkManager = MockNetworkManager(session: urlSession!)
        mockNetworkManager.outputData = Data("TEsts12".utf8)
        
        networkManager = AnyNetworkManager(manager: mockNetworkManager)
        
        
        let expect = expectation(description: #function)
        let url = URL(fileURLWithPath: "http://www.google.com")
        
        res = networkManager?.fetch(url: url, method: .get, headers: [:], token: nil, data: nil)
            .sink(receiveCompletion:{comp in
                if comp != .finished {
                    XCTFail("Error")
                }
            },
                  receiveValue: {data in
                    let decodedString = String(decoding: data, as: UTF8.self)
                    XCTAssertEqual(decodedString, "TEsts12")
                    expect.fulfill()
            }
        )
        waitForExpectations(timeout: 3.0)
    }
    
    func testSuccessfulPatchURLResponse() {
        urlSession = MockURLSession()
        let mockNetworkManager = MockNetworkManager(session: urlSession!)
        mockNetworkManager.outputData = Data("TEsts12".utf8)
        networkManager = AnyNetworkManager(manager: mockNetworkManager)
        
        let expect = expectation(description: #function)
        let url = URL(fileURLWithPath: "http://www.google.com")
        
        res = networkManager?.fetch(url: url, method: .patch)
            .sink(receiveCompletion:{comp in
                if comp != .finished {
                    XCTFail("Error")
                }
            },
                  receiveValue: {data in
                    let decodedString = String(decoding: data, as: UTF8.self)
                    XCTAssertEqual(decodedString, "TEsts12")
                    expect.fulfill()
            }
        )
        waitForExpectations(timeout: 3.0)
    }
    
    func testSuccessfulPutURLResponse() {
        urlSession = MockURLSession()
        let mockNetworkManager = MockNetworkManager(session: urlSession!)
        mockNetworkManager.outputData = Data("TEsts12".utf8)
        networkManager = AnyNetworkManager(manager: mockNetworkManager)
        
        let expect = expectation(description: #function)
        let url = URL(fileURLWithPath: "http://www.google.com")
        
        res = networkManager?.fetch(url: url, method: .put)
            .sink(receiveCompletion:{comp in
                if comp != .finished {
                    XCTFail("Error")
                }
            },
                  receiveValue: {data in
                    let decodedString = String(decoding: data, as: UTF8.self)
                    XCTAssertEqual(decodedString, "TEsts12")
                    expect.fulfill()
            }
        )
        waitForExpectations(timeout: 3.0)
    }
    
    func testSuccessfulDeleteURLResponse() {
        urlSession = MockURLSession()
        let mockNetworkManager = MockNetworkManager(session: urlSession!)
        mockNetworkManager.outputData = Data("TEsts12".utf8)
        networkManager = AnyNetworkManager(manager: mockNetworkManager)
        
        let expect = expectation(description: #function)
        let url = URL(fileURLWithPath: "http://www.google.com")
        
        res = networkManager?.fetch(url: url, method: .delete)
            .sink(receiveCompletion:{comp in
                if comp != .finished {
                    XCTFail("Error")
                }
            },
                  receiveValue: {data in
                    let decodedString = String(decoding: data, as: UTF8.self)
                    XCTAssertEqual(decodedString, "TEsts12")
                    expect.fulfill()
            }
        )
        waitForExpectations(timeout: 3.0)
    }
    
    func testFailureGetURLResponse() {
        urlSession = MockURLSession()
        let mockNetworkManager = MockNetworkManager(session: urlSession!)
        mockNetworkManager.outputData = Data("TEsts12".utf8)
        mockNetworkManager.willSucceed = false
        networkManager = AnyNetworkManager(manager: mockNetworkManager)
        
        let expect = expectation(description: #function)
        let url = URL(fileURLWithPath: "http://www.google.com")
        res = networkManager?.fetch(url: url, method: .get, headers: [:])
            .sink(receiveCompletion:{comp in
                print (comp)
                expect.fulfill()
            },
                  receiveValue: {data in
                    XCTFail("Error")
            }
        )
        
        waitForExpectations(timeout: 3.0)
    }
    
}
