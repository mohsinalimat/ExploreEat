//
//  HomeVC.swift
//  RestaurantsExplorer
//
//  Created by Shachar on 30/11/2018.
//  Copyright © 2018 Shachar. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    private let viewModel: HomeVCViewModelType
    
    init(viewModel: HomeVCViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    // MARK: - View Setup
    
    private func setupView() {
        self.view.backgroundColor = Colors.viewControllerBackground
        self.title = self.viewModel.viewTitle
    }
}
