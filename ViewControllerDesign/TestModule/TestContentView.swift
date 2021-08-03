//
//  TestContentView.swift
//  ViewControllerDesign
//
//  Created by Eugene Yatsenko on 14.06.2021.
//

import UIKit

final class TestContentView: View<TestViewModel> {

    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 20))

    override func style() {
        super.style()
        backgroundColor = .white
    }
    
    override func layout() {
        addSubview(label)
        viewModel.configure(view: self)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        label.center = center
    }
}

extension TestViewModel {
    func configure(view: TestContentView) {
        view.label.text = "Test"
        view.label.textColor = .red
        view.label.textAlignment = .center
    }
}
