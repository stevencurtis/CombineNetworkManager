//  Created by Steven Curtis

import XCTest
import Combine
@testable import NetworkCombineLibrary

class NetworkManagerTests: XCTestCase {
    
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
        let data = Data("TEsts12".utf8)
        urlSession?.data = data
        let nm = NetworkManager(session: urlSession!)
        networkManager = AnyNetworkManager(manager: nm)
        
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
    
    func testGetMethodBody() {
        urlSession = MockURLSession()
        let data = Data("TEsts12".utf8)
        urlSession?.data = data
        let nm = NetworkManager(session: urlSession!)
        networkManager = AnyNetworkManager(manager: nm)
        let expect = expectation(description: #function)
        let url = URL(fileURLWithPath: "http://www.google.com")
        res = networkManager?.fetch(url: url, method: .get, headers: [:], token: nil, data: ["data":"data"])
            .sink(
                receiveCompletion: {comp in
                    switch comp {
                    case .failure(let error):
                        XCTAssertEqual(error, NetworkError.bodyInGet)
                        expect.fulfill()
                        
                    case .finished:
                        XCTFail("Should error")
                    }
            },
                receiveValue: {
                    val in
                    XCTFail("Error")
            })
        waitForExpectations(timeout: 3.0)
    }
    
    func testSuccessfulGetURLResponse() {
        urlSession = MockURLSession()
        let data = Data("TEsts12".utf8)
        urlSession?.data = data
        let nm = NetworkManager(session: urlSession!)
        networkManager = AnyNetworkManager(manager: nm)
        let expect = expectation(description: #function)
        let url = URL(fileURLWithPath: "http://www.google.com")
        res = networkManager?.fetch(url: url, method: .get)
            .sink(
                receiveCompletion: {comp in
                    switch comp {
                    case .failure:
                        XCTFail("Should not error")
                    case .finished:
                        expect.fulfill()
                    }
            },
                receiveValue: {
                    val in
                    let decode = JSONDecoder()
                    let decoded = try! decode.decode(User.self, from: val)
                    XCTAssertEqual(decoded, user)
            })
        waitForExpectations(timeout: 3.0)
    }
    
    func testSuccessfulPatchURLResponse() {
        urlSession = MockURLSession()
        let data = Data("TEsts12".utf8)
        urlSession?.data = data
        let nm = NetworkManager(session: urlSession!)
        networkManager = AnyNetworkManager(manager: nm)
        let expect = expectation(description: #function)
        let url = URL(fileURLWithPath: "http://www.google.com")
        res = networkManager?.fetch(url: url, method: .patch)
            .sink(
                receiveCompletion: {comp in
                    switch comp {
                    case .failure:
                        XCTFail("Should not error")
                    case .finished:
                        expect.fulfill()
                    }
            },
                receiveValue: {
                    val in
                    let decode = JSONDecoder()
                    let decoded = try! decode.decode(User.self, from: val)
                    XCTAssertEqual(decoded, user)
            })
        waitForExpectations(timeout: 3.0)
    }
    
    func testSuccessfulPutURLResponse() {
        urlSession = MockURLSession()
        let data = Data("TEsts12".utf8)
        urlSession?.data = data
        let nm = NetworkManager(session: urlSession!)
        networkManager = AnyNetworkManager(manager: nm)
        let expect = expectation(description: #function)
        let url = URL(fileURLWithPath: "http://www.google.com")
        res = networkManager?.fetch(url: url, method: .put)
            .sink(
                receiveCompletion: {comp in
                    switch comp {
                    case .failure:
                        XCTFail("Should not error")
                    case .finished:
                        expect.fulfill()
                    }
            },
                receiveValue: {
                    val in
                    let decode = JSONDecoder()
                    let decoded = try! decode.decode(User.self, from: val)
                    XCTAssertEqual(decoded, user)
            })
        waitForExpectations(timeout: 3.0)
    }
    
    func testSuccessfulDeleteURLResponse() {
        urlSession = MockURLSession()
        let data = Data("TEsts12".utf8)
        urlSession?.data = data
        let nm = NetworkManager(session: urlSession!)
        networkManager = AnyNetworkManager(manager: nm)
        let expect = expectation(description: #function)
        let url = URL(fileURLWithPath: "http://www.google.com")
        res = networkManager?.fetch(url: url, method: .delete)
            .sink(
                receiveCompletion: {comp in
                    switch comp {
                    case .failure:
                        XCTFail("Should not error")
                    case .finished:
                        expect.fulfill()
                    }
            },
                receiveValue: {
                    val in
                    let decode = JSONDecoder()
                    let decoded = try! decode.decode(User.self, from: val)
                    XCTAssertEqual(decoded, user)
            })
        waitForExpectations(timeout: 3.0)
    }
    
    func testFailureGetURLResponse() {
        urlSession = MockURLSession()
        let data = Data("TEsts12".utf8)
        urlSession?.data = data
        let mockNetworkManager = MockNetworkManager(session: urlSession!)
        mockNetworkManager.outputData = Data("TEsts12".utf8)
        mockNetworkManager.willSucceed = false
        networkManager = AnyNetworkManager(manager: mockNetworkManager)
        let expect = expectation(description: #function)
        let url = URL(fileURLWithPath: "http://www.google.com")
        res = networkManager?.fetch(url: url, method: .get, headers: [:])
            .sink(
                receiveCompletion: {comp in
                    switch comp {
                    case .failure(let error):
                        XCTAssertEqual(error, NetworkError.accessForbidden)
                        expect.fulfill()
                    case .finished:
                        XCTFail("Should not finish")
                    }
            },
                receiveValue: {
                    val in
                    XCTFail("Should receive a value")
                    
            })
        waitForExpectations(timeout: 3.0)
    }
    
}
