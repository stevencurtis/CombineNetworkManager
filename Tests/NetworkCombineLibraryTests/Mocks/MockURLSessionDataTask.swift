//  Created by Steven Curtis

import Foundation
import Combine
@testable import NetworkCombineLibrary




class MockURLSessionDataTask: URLSessionDataTaskProtocol {
    private let closure: () -> Void

    init(closure: @escaping () -> Void) {
        self.closure = closure
    }

    func resume() {
        closure()
    }
    
    func cancel() { }

}


protocol Request {
    associatedtype Response: Decodable
    var urlRequest: URLRequest { get }
}

struct MockDataTaskPublisher: Publisher {
    typealias Output = (data: Data, response: URLResponse)
    typealias Failure = URLError

    let request: URLRequest

    func receive<S>(subscriber: S) where S : Subscriber, Self.Failure == S.Failure, Self.Output == S.Input {
        // something
    }
}
