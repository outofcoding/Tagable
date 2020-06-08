import XCTest
import Tagable

class Tests: XCTestCase {

    func testMyClass() {
        var testKey = "Key1"
        let test = Test()
        test.setTag(key: &testKey, value: "Test")
        
        let get = test.getTag(key: &testKey) as! String
        XCTAssertEqual(get, "Test")
    }
    
    func testButton() {
        var testKey = "Key1"
        let test = UIButton()
        test.setTag(key: &testKey, value: "Test")
        
        let get = test.getTag(key: &testKey) as! String
        XCTAssertEqual(get, "Test")
        
        var testKey2 = "Key2"
        test.setTag(key: &testKey2, value: 1)
        
        let get2 = test.getTag(key: &testKey2) as! Int
        XCTAssertEqual(get2, 1)
    }
    
    func testCommonKey() {
        let innerTextView = UITextView()
        
        let test1 = UIButton()
        test1.setTag(value: innerTextView)
        
        let text2 = UIButton()
        text2.setTag(value: 222)
        
        let get = test1.getTag() as? UITextView
        
        XCTAssertEqual(innerTextView, get)
    }
}

class Test: Tagable {}
