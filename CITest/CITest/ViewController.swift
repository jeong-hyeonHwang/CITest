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
    }
}

