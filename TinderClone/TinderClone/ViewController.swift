//
//  ViewController.swift
//  TinderClone
//
//  Created by Mehmet Ali Özdemir on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let topStackView = NavigationStackView()
    let yellowView = UIView()
    let bottomNavigationStackView = BottomActionsStackView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yellowView.backgroundColor = .yellow
        
        bottomNavigationStackView.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        layout()
    }
    
    func layout () {
        let parentStackView = UIStackView(arrangedSubviews: [topStackView, yellowView, bottomNavigationStackView])
        parentStackView.axis = .vertical
        
        view.addSubview(parentStackView)
                
        parentStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor)
    }
    
}





