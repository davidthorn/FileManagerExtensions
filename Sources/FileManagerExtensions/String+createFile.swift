import Foundation

extension String {

    /// writes the contents of the string to the filename
    ///
    /// - Parameter: with the name of the filename 
    /// - Returns: true if the data has been written or false for all other reasons
    public func createFile(with filename: String ) -> Bool {

        let data = self.data(using: .utf8)

         return FileManager.default.createFile(atPath: filename, contents: data , attributes: nil)

    }

}