import Foundation
import Glibc

extension FileManager {

    /// Returns the users home directory path based upon the Glibc getenv method
    ///
    /// - :Returns String?
    public var homeDirectory: String? {
        
        guard let env = getenv("HOME") else { return nil }
        
        return String(cString: env)
  
    }

}