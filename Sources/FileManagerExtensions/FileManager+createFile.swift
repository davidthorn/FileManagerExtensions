import Foundation

extension FileManager {

    public func createFile(with filename: String, using data: Data? = nil ) -> Bool {

        let convertedPath = self.convertPathIncludingTilde(using: filename )

        return self.createFile(atPath: convertedPath, contents: data , attributes: nil)

    }

}