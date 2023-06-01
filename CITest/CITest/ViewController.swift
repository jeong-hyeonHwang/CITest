//
//  ViewController.swift
//  CITest
//
//  Created by 황정현 on 2023/04/03.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        plistTest()
        
    }

    private func plistTest() {
        let str: String = {
            guard let str = Bundle.main.object(forInfoDictionaryKey: "TEST_KEY") as? String else { return "" }
            return str
        }()
        print(str)
        
        let attempStr: String = {
            guard let str = Bundle.main.object(forInfoDictionaryKey: "SEC_TEST_KEY") as? String else { return "" }
            return str
        }()
        print(attempStr)
        
        let plistStr: String = {
            guard let plist = Bundle.main.url(forResource: "Private", withExtension: "plist") else { return "" }
            guard let dictionary = NSDictionary(contentsOf: plist) else { return "" }
            guard let key = dictionary["TEST_KEY"] as? String else { return "" }
            return key
        }()
        print(plistStr)
    }
}

