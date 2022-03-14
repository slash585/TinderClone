//
//  BottomNavigationStackView.swift
//  TinderClone
//
//  Created by Mehmet Ali Özdemir on 15.03.2022.
//

import UIKit

class BottomActionsStackView: UIStackView {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        distribution = .fillEqually
        axis = .horizontal
        
        let bottomSubView = [UIImage(named: "yenile"), UIImage(named: "kapat"),UIImage(named: "superLike"),UIImage(named: "like"),UIImage(named: "boost"),].map{ (icon) -> UIView in
            let button = UIButton(type: .system)
            button.setImage(icon?.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
        
        bottomSubView.forEach{ (view) in
            addArrangedSubview(view)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
