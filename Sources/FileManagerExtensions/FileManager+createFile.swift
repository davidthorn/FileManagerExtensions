import Foundation

extension FileManager {

    public func createFile(with filename: String, using data: Data? = nil ) -> Bool {

         return self.createFile(atPath: filename, contents: data , attributes: nil)

    }

}