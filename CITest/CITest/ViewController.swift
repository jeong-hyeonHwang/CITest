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
            guard let privatePlist = Bundle.main.url(forResource: "Private", withExtension: "plist"), let dictionary = NSDictionary(contentsOf: privatePlist), let link: String = dictionary["test"] as? String else { return "" }
            return link
        }()
        print(str)
    }
}

