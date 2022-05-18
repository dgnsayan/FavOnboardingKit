//
//  OnboardingViewContoller.swift
//  
//
//  Created by Doğan Sayan on 15.05.2022.
//

import UIKit

class OnboardingViewContoller: UIViewController {
    
    private let slide:[Slide]
    private let tintcolor:UIColor
    
    
    private lazy var transitionView:TransitionView = {
        let view = TransitionView()
        return view
    }()
    
    private lazy var buttonContainerView:ButtonContainerView = {
        let view = ButtonContainerView()
        return view
    }()
    
    private lazy var stackView:UIStackView = {
        let view = UIStackView(arrangedSubviews: [transitionView,buttonContainerView])
        view.axis = .vertical
        return view
    }()
    
    init(slide:[Slide], tintcolor:UIColor) {
        self.slide = slide
        self.tintcolor = tintcolor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews(){
        view.backgroundColor = .red
        view.addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.edges.equalTo(self.view)
        }
        
        buttonContainerView.snp.makeConstraints { make in
            make.height.equalTo(120)
        }
        
    }
}
