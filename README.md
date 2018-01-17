# FileManagerExtensions

I created this package because the FileManager itself is too complicated and I always forgot which methods need to be called etc.

File management should be a simple thing and as easy as writing a terminal command like touch.

## Extensions

### homeDirectory


```swift

extension FileManager {

    /// Returns the users home directory path
    ///
    /// - :Returns String
    public var homeDirectory: String

}

```
## mkdir

```swift

extension FileManager {

    /// attempts to make the directory at the path name provided
    ///      
    /// - : Parameter path: The path which should be used to create the directory
    /// - : Returns Bool    true if directory has been created, false if not
    public func mkdir(path name: String ) -> Bool 

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

## touch

```swift

    /// writes the contents of the string to the filename
    ///
    /// - Parameter: filename the name of the filename 
    /// - Returns: true if the data has been written or false for all other reasons
    func touch(filename: String) -> Bool

```

## String.touch

```swift

extension String {

    /// creates a file using the filename
    /// 
    /// The filename can be either relative using the ~
    /// The tilde will be automatically converted to use its absolute path
    ///
    /// - Parameter: filename the name of the filename 
    /// - Returns: true if the file has been created otherwise false
    public func touch(filename: String ) -> Bool 

}

```

