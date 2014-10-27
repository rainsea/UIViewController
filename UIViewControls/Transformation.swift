//
//  Transformation.swift
//  UIViewControls
//
//  Created by Trinh Minh Cuong on 10/23/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Transformation: UIViewController {
    var playboy: UIImageView?
    var sliderRotate: UISlider?
    var sliderScale: UISlider?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        let bound = self.view.bounds
        playboy = UIImageView(image: UIImage(named: "cat_grumpy"))
        playboy!.center = CGPoint(x: bound.size.width * 0.5, y: 350)
        self.view.addSubview(playboy!)
        
        //add sliderRotate
        sliderRotate = UISlider(frame: CGRect(x: 10, y: 150, width: bound.size.width - 20, height: 30))
        sliderRotate?.addTarget(self, action: "onSliderChange", forControlEvents: UIControlEvents.ValueChanged)
        sliderRotate?.value = 0.5
        self.view.addSubview(sliderRotate!)
        
        //add sliderRotate
        sliderScale = UISlider(frame: CGRect(x: 10, y: 180, width: bound.size.width - 20, height: 30))
        sliderScale?.addTarget(self, action: "onSliderChange", forControlEvents: UIControlEvents.ValueChanged)
        sliderScale?.value = 0
        self.view.addSubview(sliderScale!)
    }
    
//    func onSliderChangeRotate(sliderRotate: UISlider) {
//        playboy!.transform = CGAffineTransformMakeRotation(CGFloat(2.0 * M_PI * Double(sliderRotate.value)))
//    }
//    
//    func onSliderChangeScale(sliderScale: UISlider) {
//        playboy!.transform = CGAffineTransformMakeScale(CGFloat(sliderScale.value), CGFloat(sliderScale.value))
//    }
    func onSliderChange(){
        let scaleRatio = CGFloat(sliderScale!.value * 4)
        playboy!.transform = CGAffineTransformConcat(CGAffineTransformMakeRotation(CGFloat(M_PI * Double(sliderRotate!.value))), CGAffineTransformMakeScale(scaleRatio, scaleRatio));
    }

}
