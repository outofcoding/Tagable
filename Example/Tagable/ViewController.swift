//
//  ViewController.swift
//  Tagable
//
//  Created by outofcoding on 06/08/2020.
//  Copyright (c) 2020 outofcoding. All rights reserved.
//

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
