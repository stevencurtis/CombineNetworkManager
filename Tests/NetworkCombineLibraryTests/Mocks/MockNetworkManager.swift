//  Created by Steven Curtis


import Foundation
import Combine
@testable import NetworkCombineLibrary

// the MockHTTPManager does not use the session within the response
class MockNetworkManager <T: URLSessionProtocol>: NetworkManagerProtocol {
    var outputData = emptyString.data(using: .utf8)
    var willSucceed = true
    let session: T

    required init(session: T) {
      self.session = session
    }
    
    func fetch(url: URL, method: HTTPMethod, headers: [String : String] = [:], token: String?, data: [String : Any]?) -> AnyPublisher<Data, NetworkError> {
        if let dta = outputData {
            if willSucceed {
                return Just(dta)
                    .setFailureType(to: NetworkError.self)
                    .eraseToAnyPublisher()
            } else {
                return Fail(error: NetworkError.accessForbidden)
                    .eraseToAnyPublisher()
            }
        }
        return Fail(error: NetworkError.accessForbidden)
                .eraseToAnyPublisher()
    }
}

