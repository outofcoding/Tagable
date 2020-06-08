# Tagable

[![CI Status](https://img.shields.io/travis/outofcoding/Tagable.svg?style=flat)](https://travis-ci.org/outofcoding/Tagable)
[![Version](https://img.shields.io/cocoapods/v/Tagable.svg?style=flat)](https://cocoapods.org/pods/Tagable)
[![License](https://img.shields.io/cocoapods/l/Tagable.svg?style=flat)](https://cocoapods.org/pods/Tagable)
[![Platform](https://img.shields.io/cocoapods/p/Tagable.svg?style=flat)](https://cocoapods.org/pods/Tagable)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Simple Use.
``` swift
import UIKit
import Tagable

class MyClass : Tagable {}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var key1 = "TestKey1"
        let test1 = UIButton()
        test1.setTag(key: &key1, value: "This is test")
        if let get1 = test1.getTag(key: &key1) as? String {
            print("get1 = \(get1)")
        }
        
        var key2 = "TestKey2"
        let textView = UITextView()
        let test2 = UIButton()
        test2.setTag(key: &key2, value: textView)
        if let get2 = test2.getTag(key: &key2) as? UITextView {
            print("get2 = \(get2)")
        }
        
        let test3 = UIButton()
        test3.setTag(value: test2)
        if let get3 = test3.getTag() as? UIButton {
            print("get3 = \(get3)")
        }
        
        let test4 = MyClass()
        test4.setTag(value: test3)
        if let get4 = test4.getTag(as: UIButton.self) {
            print("get4 = \(get4)")
        }
    }
}
```

Use My Class extend Tagable
```
class MyClass : Tagable {}
```

## Requirements
- None

## Installation

Tagable is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Tagable'
```

## Author

outofcoding, outofcoding@gmail.com
DH, mrgamza@gmail.com

## License

Tagable is available under the MIT license. See the LICENSE file for more info.
