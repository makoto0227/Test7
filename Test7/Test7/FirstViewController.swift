//
//  FirstViewController.swift
//  Test7
//
//  Created by 宮崎真 on 2019/09/24.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit


import PGFramework


// MARK: - Property
class FirstViewController: BaseViewController {
    @IBOutlet weak var firstMainView: FirstMainView!
    
}

// MARK: - Life cycle
extension FirstViewController {
    override func loadView() {
        super.loadView()
        firstMainView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension FirstViewController: FirstMainViewDelegate {
    func touchedButton(_ sender: UIButton) {
        let secondViewController = SecondViewController()
        transitionViewController(from: self, to: secondViewController)
        animatorManager.navigationType = .push
    }
    
    
}

// MARK: - method
extension FirstViewController {
    
}
