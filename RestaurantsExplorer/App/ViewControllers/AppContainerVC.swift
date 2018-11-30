//
//  AppContainerVC.swift
//  RestaurantsExplorer
//
//  Created by Shachar on 30/11/2018.
//  Copyright © 2018 Shachar. All rights reserved.
//

import Foundation
import UIKit
import PureLayout

class AppContainerVC: UIViewController {
    
    private let homeVC: HomeVC
    
    init(homeVC: HomeVC) {
        self.homeVC = homeVC
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        self.showHomeVC()
    }
    
    private func showHomeVC() {
        self.homeVC.view.alpha = 0
        self.addSubviewVC(viewController: self.homeVC)
        UIView.animate(withDuration: 0.2) {
            self.homeVC.view.alpha = 1
        }
    }
}
