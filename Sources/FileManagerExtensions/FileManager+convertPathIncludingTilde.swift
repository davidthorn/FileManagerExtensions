import Foundation

extension FileManager {

    /// Converts the tilde (~) if provided to the full path
    ///
    /// - Parameter using: the path to the file which should be converted to an absolute strng
    /// - Returns: A new string with the tilde remove if was present else the original string
    public func convertPathIncludingTilde(using relativePath: String ) -> String {

        guard let tilde = relativePath.tilde else {
            return relativePath
        }

        let homePath = self.homeDirectory

        return relativePath.replacingOccurrences(of: String(tilde) , with: homePath)

    }

}