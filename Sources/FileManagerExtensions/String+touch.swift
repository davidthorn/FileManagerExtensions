import Foundation

extension String {

    /// writes the contents of the string to the filename
    ///
    /// - Parameter: filename the name of the filename 
    /// - Returns: true if the data has been written or false for all other reasons
    public func touch(filename: String ) -> Bool {

        let convertedPath = FileManager.default.convertPathIncludingTilde(using: filename )

        let data = self.data(using: .utf8)

        return FileManager.default.createFile(atPath: convertedPath, contents: data , attributes: nil)

    }

}