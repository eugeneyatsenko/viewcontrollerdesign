//
//  ViewModel.swift
//  ViewControllerDesign
//
//  Created by Eugene Yatsenko on 10.06.2021.
//

protocol ViewModel {
    associatedtype View: ContentView

    func onLoad()
    func onAppear()
    func onDisappear()

    func configure(view: View)
}

extension ViewModel {
    func onLoad() {}
    func onAppear() {}
    func onDisappear() {}

    func configure(view: View) {}
}
