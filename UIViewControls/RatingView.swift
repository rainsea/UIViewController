//
//  RatingView.swift
//  UIViewControls
//
//  Created by RainSea on 10/26/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class RatingView: UIViewController {
    var star: UIImageView?
    var slider: UISlider?
    var value: CGFloat?
    var fullWidth: CGFloat?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        let bound = self.view.bounds
        //ImageView
        star = UIImageView(image: UIImage(named: "5star.png"))
        star!.center = CGPoint(x: bound.size.width * 0.5 , y: bound.size.height * 0.5)
        self.view.addSubview(star!)
        //Slider
        slider = UISlider(frame: CGRect(x:10, y: 100, width: bound.size.width - 20, height: 30))
        slider!.addTarget(self, action: "rating:", forControlEvents: UIControlEvents.ValueChanged)
        fullWidth = self.star!.bounds.size.width
        slider!.value = Float(fullWidth!)
        self.view.addSubview(slider!)
        
    }
       func rating(slider: UISlider){
        if(slider.value < 0 || slider.value > 5) {
            return
        } else {
            value = CGFloat(slider.value)
            self.star!.frame = CGRectMake(self.star!.frame.origin.x, self.star!.frame.origin.y, fullWidth! * value!/5.0, self.star!.frame.size.height);
        }
    }
}


