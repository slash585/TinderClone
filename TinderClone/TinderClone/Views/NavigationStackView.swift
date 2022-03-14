//
//  NavigationTopStackView.swift
//  TinderClone
//
//  Created by Mehmet Ali Özdemir on 15.03.2022.
//

import UIKit

class NavigationStackView: UIStackView {
    
    let fireImage = UIImageView(image: UIImage(named: "alev"))
    let btnMessage = UIButton(type: .system)
    let btnProfie = UIButton(type: .system)

    override init(frame: CGRect){
        super.init(frame: frame)
        
        fireImage.contentMode = .scaleAspectFit
        
        btnMessage.setImage(UIImage(named: "mesaj")?.withRenderingMode(.alwaysOriginal), for: .normal)
        btnProfie.setImage(UIImage(named: "profil")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        [btnProfie, UIView(), fireImage, UIView(), btnMessage].forEach{ (view) in
            addArrangedSubview(view)
        }
        
        distribution = .equalCentering
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 18, bottom: 0, right: 18)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
