//
//  TestViewController.swift
//  ViewControllerDesign
//
//  Created by Eugene Yatsenko on 10.06.2021.
//

import UIKit

class TestViewController: ViewController<TestContentView> {

    override func configure() {
        super.configure()
    }

    override func actions() {
        super.actions()
    }

    override func notifies() {
        super.notifies()
        
        contentView.viewModel.state = { state in
            switch state {
            case .load:
                print("load state")
            }
        }
    }
}
