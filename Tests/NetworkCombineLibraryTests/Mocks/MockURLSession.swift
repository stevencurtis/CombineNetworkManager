//  Created by Steven Curtis


import Foundation
import Combine
@testable import NetworkCombineLibrary

class MockURLSession: URLSessionProtocol {

    func dataTaskPub(for request: URLRequest) -> AnyPublisher<(data: Data, response: URLResponse), URLError> {

        let file = LibraryFiles().url(for: "google.json")!

    
//        let data: Data = self.data!
        let data: Data = try! Data(contentsOf: file)
        let res: URLResponse = HTTPURLResponse(url: request.url!, statusCode: 200, httpVersion: nil, headerFields: [:])!
        let emit = (data: data, response: res)
        return Just(emit).setFailureType(to: URLError.self ).eraseToAnyPublisher()
        
    
//        return URLSession.shared
//            .dataTaskPublisher(for: request)
////            .tryMap { data, response in
////                     // something
////        }
//        .eraseToAnyPublisher()
    }
    

    
    
    func dataTaskPublisher(for request: URLRequest) -> URLSession.DataTaskPublisher {
//        let data = self.data
//        let error = self.error
//        let response = HTTPURLResponse(url: URL(fileURLWithPath: ""), statusCode: 200,
//                                       httpVersion: nil, headerFields: nil)!
//
//
//
//
        
//        return MockDataTaskPublisher(request: request)
//             .eraseToAnyPublisher()
        
        
//        let stubReply = request.url?.lastPathComponent ?? "stub_error"
//        let stubReply = "google"
//        let file = Bundle(for: type(of: self)).url(forResource: stubReply, withExtension: "json")
        
//        try! Bundle(for: type(of: self)).decode(StringsModel.self, from: "StandardTextTest.json")
//        print( Bundle(for: type(of: self)) )
//        let file = Bundle(for: type(of: self)).url(forResource: "google.json", withExtension: nil)
        
        
//        setMeUp()
        
        
        
//        guard let enumerator = FileManager.default.enumerator(
//            at: baseURL,
//            includingPropertiesForKeys: [.nameKey],
//            options: [.skipsHiddenFiles, .skipsPackageDescendants],
//            errorHandler: nil) else {
//                fatalError("Could not enumerate \(baseURL)")
//        }
//
//        for case let url as URL in enumerator where url.isFileURL {
//            cache[url.lastPathComponent] = url
//        }
//
//        let file = url(for: "google.json")!
        let file = LibraryFiles().url(for: "google.json")!
        return URLSession.shared.dataTaskPublisher(for: file)
        
        
        
        
        
        
//        let res = URLSession.shared.dataTaskPublisher(for: file!)
        
//        Result<(Data, URLResponse), <#Failure: Error#>>.success((Data("TEsts12".utf8), response as URLResponse))
//        let test = AnyPublisher<(data: Data, response: URLResponse), URLError>(Data("TEsts12".utf8), response as URLResponse)
//
//        return test
//        return URLSession.shared.dataTaskPublisher(for: file!).eraseToAnyPublisher()
        
        
//        return MockDataTaskPublisher(request: request)
//            .eraseToAnyPublisher()
        
//
//        return Result<(data: Data, response: HTTPURLResponse), Error>
//            .success(
//                URLSession.DataTaskPublisher(request: URLRequest(url: file!), session: MockURLSessionDataTask)
//        )
        
//        typealias CompletionHandler = (Data?, URLResponse?, Error?) -> Void
//
//
//        let completionHandler: CompletionHandler = { data, response, error in
//
//        }
//
//        return Just(MockURLSessionDataTask {
//            return completionHandler(data, response, error)
//        }
//        ).eraseToAnyPublisher()

//        return MockURLSessionDataTask {
//            completionHandler(data, response, error)
//        }.eraseToAnyPublisher()

        
//        var urlRequest = URLRequest(url: file!)
//        urlRequest.setValue("200", forHTTPHeaderField: "HTTPURLResponse")
//        return URLSession.shared.dataTaskPublisher(for: urlRequest)
        

//        return URLSession.shared.dataTaskPublisher(for: URLRequest(url: URL(string: "")!))
        
        
//        MockURLSessionDataTask(closure: {
//
//        }).eraseToAnyPublisher()

//        return MockURLSessionDataTask {
//            completionHandler(data, response, error)
//        }
//        .eraseToAnyPublisher()
    }
    
    func dataTaskPublisher(for: URL) -> URLSession.DataTaskPublisher {
        let data = self.data
        let error = self.error
        
        return URLSession.shared.dataTaskPublisher(for: URLRequest(url: URL(string: "")!))

//        return MockURLSessionDataTask {
//            completionHandler(data, nil, error)
//        }
//        .eraseToAnyPublisher()
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
