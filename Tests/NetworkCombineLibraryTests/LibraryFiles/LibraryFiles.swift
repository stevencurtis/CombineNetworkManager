//
//  File.swift
//  
//
//  Created by Steven Curtis on 14/09/2020.
//

import Foundation

class LibraryFiles {
    var cache: [String: URL] = [:] // Save all local files in this cache
    let baseURL = urlForRestServicesTestsDir()

    static func urlForRestServicesTestsDir() -> URL {
        let currentFileURL = URL(fileURLWithPath: "\(#file)", isDirectory: false)
        return currentFileURL
            .deletingLastPathComponent()
            .deletingLastPathComponent()
    }

    func url(for fileName: String) -> URL? {
        return cache[fileName]
    }
    
    init() {
            guard let enumerator = FileManager.default.enumerator(
            at: baseURL,
            includingPropertiesForKeys: [.nameKey],
            options: [.skipsHiddenFiles, .skipsPackageDescendants],
            errorHandler: nil) else {
                fatalError("Could not enumerate \(baseURL)")
        }
        
        for case let url as URL in enumerator where url.isFileURL {
            cache[url.lastPathComponent] = url
        }
    }
    

}
