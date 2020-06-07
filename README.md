# Tagable

[![CI Status](https://img.shields.io/travis/outofcoding/Tagable.svg?style=flat)](https://travis-ci.org/outofcoding/Tagable)
[![Version](https://img.shields.io/cocoapods/v/Tagable.svg?style=flat)](https://cocoapods.org/pods/Tagable)
[![License](https://img.shields.io/cocoapods/l/Tagable.svg?style=flat)](https://cocoapods.org/pods/Tagable)
[![Platform](https://img.shields.io/cocoapods/p/Tagable.svg?style=flat)](https://cocoapods.org/pods/Tagable)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

``` swift
extension UIButton: Tagable { }

var key = "TestKey"

let button = UIButton()

button.setTag(key: &key, value: "This is test")

if let value = button.getTag(key: &key) as? String {
    print("\(value)")
}
```

## Requirements
- infinite

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
