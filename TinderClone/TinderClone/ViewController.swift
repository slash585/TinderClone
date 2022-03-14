//
//  ViewController.swift
//  TinderClone
//
//  Created by Mehmet Ali Özdemir on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subViews = [UIColor.red, UIColor.blue, UIColor.purple].map{(color) -> UIView in
            let uiView = UIView()
            uiView.backgroundColor = color
            return uiView
        }
        
        let topStackView = UIStackView(arrangedSubviews: subViews)
        topStackView.distribution = .fillEqually
        topStackView.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        

        
        let bottomNavigationStackView = BottomActionsStackView()
        bottomNavigationStackView.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        
        let parentStackView = UIStackView(arrangedSubviews: [topStackView, yellowView, bottomNavigationStackView])
        parentStackView.axis = .vertical
        
        view.addSubview(parentStackView)
                
        parentStackView.fillSuperView()
    }
    
}





