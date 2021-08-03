//
//  View.swift
//  ViewControllerDesign
//
//  Created by Eugene Yatsenko on 10.06.2021.
//

import UIKit

class View<ViewModelType: ViewModel>: UIView, ContentView {

    let viewModel: ViewModelType

    init(viewModel: ViewModelType) {
        self.viewModel = viewModel

        super.init(
            frame: CGRect(
                x: 0,
                y: 0,
                width: UIView.noIntrinsicMetric,
                height: UIView.noIntrinsicMetric
            )
        )

        style()
        configure()
        layout()
    }

    func style() {}
    func configure() {}
    func layout() {}

    required init?(coder: NSCoder) {
        return nil
    }
}
