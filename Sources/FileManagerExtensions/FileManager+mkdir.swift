import Foundation
import Glibc

extension FileManager {

    /// attempts to make the directory at the path name provided
    ///      
    /// - : Parameter path: The path which should be used to create the directory
    /// - : Returns Bool    true if directory has been created, false if not
    public func mkdir(path name: String ) -> Bool {

        let fullPath = self.convertPathIncludingTilde(using: name)

        //let dir = URL(string: "\(string)/.github-cache")!
        return Glibc.mkdir(fullPath , S_IRWXG) == -1 ? false : true
   
    }

}