# Package4500

This package provides a minimal, reproducible example of the issue reported in
https://github.com/apple/swift-package-manager/issues/4500.

To reproduce the issue:
1. Clone this package, and `cd` into it
2. Run `swift test`

The below logs show that the module bundle is `nil`. This is unexpected and only
appears when using the Swift Package Manager CLI.   
```
‣ swift test 
warning: Usage of /Users/nickcooke/Library/org.swift.swiftpm/collections.json has been deprecated. Please delete it and use the new /Users/nickcooke/Library/org.swift.swiftpm/configuration/collections.json instead.
Building for debugging...
[4/4] Linking Package4500PackageTests
Build complete! (1.09s)
Test Suite 'All tests' started at 2022-11-22 12:05:23.078
Test Suite 'Package4500PackageTests.xctest' started at 2022-11-22 12:05:23.079
Test Suite 'PackageTests' started at 2022-11-22 12:05:23.079
Test Case '-[PackageTests testIssue4500]' started.
/Users/nickcooke/Developer/Package4500/Tests/Package4500Tests/PackageTests.m:20: error: -[PackageTests testIssue4500] : (([Package bundle]) != nil) failed
Test Case '-[PackageTests testIssue4500]' failed (2.458 seconds).
Test Suite 'PackageTests' failed at 2022-11-22 12:05:25.538.
     Executed 1 test, with 1 failure (0 unexpected) in 2.458 (2.458) seconds
Test Suite 'Package4500PackageTests.xctest' failed at 2022-11-22 12:05:25.538.
     Executed 1 test, with 1 failure (0 unexpected) in 2.458 (2.459) seconds
Test Suite 'All tests' failed at 2022-11-22 12:05:25.538.
     Executed 1 test, with 1 failure (0 unexpected) in 2.458 (2.460) seconds
``` 
