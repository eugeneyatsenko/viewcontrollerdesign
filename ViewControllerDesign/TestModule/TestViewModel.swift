//
//  TestViewModel.swift
//  ViewControllerDesign
//
//  Created by Eugene Yatsenko on 14.06.2021.
//

import Foundation

final class TestViewModel: ViewModel {
    enum State {
        case load
    }
    var state: ((State) -> Void)?

    func viewLoad() {
        state?(.load)
    }
}
