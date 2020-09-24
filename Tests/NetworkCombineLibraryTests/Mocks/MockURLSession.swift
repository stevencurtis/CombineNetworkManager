//  Created by Steven Curtis


import Foundation
import Combine
@testable import NetworkCombineLibrary

class MockURLSession: URLSessionProtocol {

    func dataTaskPub(for request: URLRequest) -> AnyPublisher<(data: Data, response: URLResponse), URLError> {
        let file = LibraryFiles().url(for: "google.json")!
        let data: Data = try! Data(contentsOf: file)
        let res: URLResponse = HTTPURLResponse(url: request.url!, statusCode: 200, httpVersion: nil, headerFields: [:])!
        let emit = (data: data, response: res)
        return Just(emit).setFailureType(to: URLError.self ).eraseToAnyPublisher()
    }

    func dataTaskPublisher(for request: URLRequest) -> URLSession.DataTaskPublisher {
        let file = LibraryFiles().url(for: "google.json")!
        return URLSession.shared.dataTaskPublisher(for: file)
    }
    
    func dataTaskPublisher(for: URL) -> URLSession.DataTaskPublisher {
        return URLSession.shared.dataTaskPublisher(for: URLRequest(url: URL(string: "")!))
    }
    
    typealias CompletionHandler = (Data?, URLResponse?, Error?) -> Void
    // data and error can be set to provide data or an error
    var data: Data?
    var error: Error?

    func dataTask(with request: URLRequest,
                  completionHandler:
        @escaping (Data?, URLResponse?, Error?) -> Void) ->
        MockURLSessionDataTask {
            let data = self.data
            let error = self.error
            let response = HTTPURLResponse(url: URL(fileURLWithPath: ""), statusCode: 200,
                                           httpVersion: nil, headerFields: nil)!

            return MockURLSessionDataTask {
                completionHandler(data, response, error)
            }
    }

    func dataTask(
        with url: URL,
        completionHandler: @escaping CompletionHandler
        ) -> MockURLSessionDataTask {
        let data = self.data
        let error = self.error
        return MockURLSessionDataTask {
            completionHandler(data, nil, error)
        }
    }
}
