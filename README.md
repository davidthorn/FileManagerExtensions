# FileManagerExtensions

I created this package because the FileManager itself is too complicated and I always forgot which methods need to be called etc.

File management should be a simple thing and as easy as writing a terminal command like touch.

## Extensions

### homeDirectory


```swift

extension FileManager {

    /// Returns the users home directory path based upon the Glibc getenv method
    ///
    /// - :Returns String?
    public var homeDirectory: String?

}

```
## mkdir

```swift

extension FileManager {

    /// Returns the users home directory path based upon the Glibc getenv method
    ///
    /// - :Returns String?
    public var homeDirectory: String?

}

```

## convertPathIncludingTilde

```swift

extension FileManager {

    /// Converts the tilde (~) if provided to the full path
    ///
    /// - Parameter using: the path to the file which should be converted to an absolute strng
    /// - Returns: A new string with the tilde remove if was present else the original string
    public func convertPathIncludingTilde(using relativePath: String ) -> String

}
 
```

## tilde

```swift

extension String {

    /// returns an tilde in the string if it has an index of 0
    ///
    /// - :Returns tilde character as a string
    public var tilde: String?

}


```

## FileManager.createFile

```swift

extension FileManager {

    /// writes the contents of the data to the filename
    ///
    /// - Parameter: with the name of the filename 
    /// - Parameter: using data
    /// - Returns: true if the data has been written or false for all other reasons
    public func createFile(with filename: String, using data: Data? = nil ) -> Bool 

}

```

## String.createFile

```swift

extension String {

    /// writes the contents of the string to the filename
    ///
    /// - Parameter: with the name of the filename 
    /// - Returns: true if the data has been written or false for all other reasons
    public func createFile(with filename: String ) -> Bool 

}

```