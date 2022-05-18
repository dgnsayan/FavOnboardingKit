import UIKit

public class FavOnboardingKit{
    
    private let slide:[Slide]
    private let tintcolor:UIColor
    
    private lazy var onboardingViewContoller : OnboardingViewContoller = {
        let controller = OnboardingViewContoller(slide: slide, tintcolor: tintcolor)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        return controller
    }()
    
    public init(slide:[Slide], tintcolor:UIColor) {
        self.slide = slide
        self.tintcolor = tintcolor
    }
    
    public func launchOnboarding(rootVC: UIViewController){
        rootVC.present(onboardingViewContoller, animated: true, completion: nil)
    }
    
    public func dismissOnboarding(){
        
    }
    
}
