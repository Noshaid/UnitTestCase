//
//  ViewController.swift
//  iOSTesting
//
//  Created by Noshaid Ali on 14/04/2020.
//  Copyright © 2020 Noshaid Ali. All rights reserved.
//

import UIKit

class NetworkStack {
    
    static var shared = NetworkStack()
    
    func startRequest(completion: @escaping (String) -> Void) {
        
    }
}

class MockNetworkStack: NetworkStack {
    var firedRequest = false
    var title = "good"
    
    override func startRequest(completion: @escaping (String) -> Void) {
        firedRequest = true
        completion(title)
    }
}

class ViewController: UIViewController {
    
    var network = NetworkStack()
    
    convenience init(network: NetworkStack) {
        self.init()
        self.network = network
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(addNums(a: 2, b: 4))
        print(2.square())
    
        let str = "abc"
        for char in str {
            print(char)
        }
        
        network.startRequest { title in
            self.title = title
        }
    }
    
    func addNums(a: Int, b: Int) -> Int {
        return a + b
    }
    
}

extension Int {
    func square() -> Int {
        return self * self
    }
}
