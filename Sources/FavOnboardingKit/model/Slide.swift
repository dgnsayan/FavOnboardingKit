//
//  Slide.swift
//  
//
//  Created by Doğan Sayan on 15.05.2022.
//

import UIKit


public struct Slide {
    public var image:UIImage
    public var title:String
    
    public init(image:UIImage,title:String) {
        self.image = image
        self.title = title
    }
}
