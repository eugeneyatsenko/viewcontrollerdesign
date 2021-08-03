//
//  ViewContent.swift
//  ViewControllerDesign
//
//  Created by Eugene Yatsenko on 10.06.2021.
//

import UIKit

protocol ContentView: UIView {
    associatedtype T: ViewModel
    var viewModel: T { get }

    func style()
    func configure()
    func layout()
}
