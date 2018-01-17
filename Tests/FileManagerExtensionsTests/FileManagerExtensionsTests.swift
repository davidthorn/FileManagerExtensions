import XCTest
import Foundation

@testable import FileManagerExtensions

class FileManagerExtensionsTests: XCTestCase {
    
    func testStringTouch() {

        let baseString = "~/touchedfile"

        let contents = "write this data to file please"

        let result = contents.touch(filename: baseString)

        XCTAssertEqual(result , true , "the file should has been created")
    }

    func testTouch() {

        let baseString = "~/touchedfile"

        let result = touch(filename: baseString)

        XCTAssertEqual(result , true , "the file should has been created")
    }

    func testTildePropertyOfString() {

        let baseString = "~/myfile"

        let tilde = baseString.tilde

        XCTAssertNotNil(tilde , "this should not be nil")
        
        XCTAssertEqual(tilde , "~")

    }

    func testHomeDirectoryReturnsCorrectPath() {

        let baseUrl = "/home/david"

        let homeDirectory = FileManager.default.homeDirectory

        XCTAssertNotNil(homeDirectory , "the home directory should not be nil")

        XCTAssertEqual(homeDirectory, baseUrl)

    }
    
    func testconvertsRelativePathIncludingTildeToAbsolutePath() {

        let baseUrl = "/myfile/in/my/home/direct/text.text"

        let relativePath = "~\(baseUrl)"

        let absolutePath = FileManager.default.convertPathIncludingTilde(using: relativePath)

        XCTAssertEqual(absolutePath , "/home/david\(baseUrl)")

    }

    func testReturnsAbsolutePathWhenNotIncludingTilde() {

        let baseUrl = "/myfile/in/my/home/direct/text.text"

        let absolutePath = FileManager.default.convertPathIncludingTilde(using: baseUrl)

        XCTAssertEqual(absolutePath ,baseUrl )

    }

    func testFileCreateWorks() {

        var fileName = FileManager.default.homeDirectory

        XCTAssertNotNil(fileName, "filename should not be nil")

        XCTAssertEqual(fileName , "/home/david")

        fileName.append("/filename")

        XCTAssertEqual(fileName , "/home/david/filename")

        let result = FileManager.default.createFile(with: fileName)

        XCTAssertEqual(result , true , "the file should has been created")

    }

    func testStringFileCreateWorks() {

        var fileName = FileManager.default.homeDirectory

        XCTAssertNotNil(fileName, "filename should not be nil")

        fileName.append("/filename3")

        let contents = "This is the contents of the file"

        let result = contents.createFile(with: fileName)

        XCTAssertEqual(result , true , "the file should has been created")

    }

    func testhomeDirectoryForCurrentUser() {

        let homeDirectory = FileManager.default.homeDirectoryForCurrentUser

        let absolutePath = homeDirectory.absoluteString

        XCTAssertEqual(absolutePath , "file:///home/david/")

        XCTAssertEqual(homeDirectory.relativePath , "/home/david")

    }

    static var allTests = [
        ("testconvertsRelativePathIncludingTildeToAbsolutePath", testconvertsRelativePathIncludingTildeToAbsolutePath),
        ("testReturnsAbsolutePathWhenNotIncludingTilde" , testReturnsAbsolutePathWhenNotIncludingTilde),
        ("testHomeDirectoryReturnsCorrectPath" , testHomeDirectoryReturnsCorrectPath),
        ("testTildePropertyOfString" , testTildePropertyOfString),
        ("testFileCreateWorks" , testFileCreateWorks),
        ("testStringFileCreateWorks" , testStringFileCreateWorks),
        ("testTouch" , testTouch),
        ("testStringTouch" , testStringTouch),
        ("testhomeDirectoryForCurrentUser" , testhomeDirectoryForCurrentUser)
    ]
}
