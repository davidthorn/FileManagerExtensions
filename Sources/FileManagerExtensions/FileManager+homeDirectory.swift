import Foundation
import Glibc

extension FileManager {

    /// Returns the users home directory path
    ///
    /// - :Returns String
    public var homeDirectory: String {
        
        return FileManager.default.homeDirectoryForCurrentUser.relativePath
    
    }


}