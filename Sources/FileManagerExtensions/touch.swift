import Foundation

/// creates a file using the filename
/// 
/// The filename can be either relative using the ~
/// The tilde will be automatically converted to use its absolute path
///
/// - Parameter: filename the name of the filename 
/// - Returns: true if the file has been created otherwise false
func touch(filename: String) -> Bool {

    return "".createFile(with: filename)

}