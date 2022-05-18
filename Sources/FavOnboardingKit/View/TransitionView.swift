//
//  TransitionView.swift
//  
//
//  Created by Doğan Sayan on 18.05.2022.
//

import UIKit

class TransitionView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout(){
        backgroundColor = .blue
    }
}
