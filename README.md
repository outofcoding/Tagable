# Tagable
Class를 상속받지 말고 변수를 tag로 사용할 수 있어요.

# UseCase

``` swift
extension UIButton: Tagable { }

var key = "TestKey"

let button = UIButton()

button.setTag(key: &key, value: "This is test")

if let value = button.getTag(key: &key) as? String {
    print("\(value)")
}
```
