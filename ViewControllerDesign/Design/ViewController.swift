//
//  ViewController.swift
//  ViewControllerDesign
//
//  Created by Eugene Yatsenko on 10.06.2021.
//

import UIKit

class ViewController<
    ContentViewType: ContentView
> : UIViewController {

    let contentView: ContentViewType

    init(contentView: ContentViewType) {
        self.contentView = contentView
        
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
         return nil
    }

    override func loadView() {
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        actions()
        notifies()
        configure()
        
        contentView.viewModel.onLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        contentView.viewModel.onAppear()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        contentView.viewModel.onDisappear()
    }

    func configure() {}
    func actions() {}
    func notifies() {}
}
