//  Created by Steven Curtis

import Foundation

public struct User: Codable, Hashable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
