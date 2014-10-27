//
//  AlphaProperty.swift
//  UIViewControls
//
//  Created by RainSea on 10/24/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class AlphaProperty: UIViewController {
    var coolGirl: UIImageView?
    var alphaSlider: UISlider?
    override func viewDidLoad() {
        super.viewDidLoad()
        let bound = self.view.bounds
        self.view.backgroundColor = UIColor.whiteColor()
        coolGirl = UIImageView(image: UIImage(named: "coolGirl.jpg"))
        coolGirl!.frame = self.view.bounds
        coolGirl!.contentMode = UIViewContentMode.ScaleAspectFit
        self.view.addSubview(coolGirl!)
        
        //add slider
        alphaSlider = UISlider(frame: CGRect(x: 10, y: 150, width: bound.size.width - 20, height: 30))
        alphaSlider!.addTarget(self, action: "onSliderChange:", forControlEvents: UIControlEvents.ValueChanged)
        alphaSlider!.value = Float(coolGirl!.alpha)
        self.view.addSubview(alphaSlider!)
        
    }
    func onSliderChange(alphaSlider: UISlider){
        coolGirl!.alpha = CGFloat(alphaSlider.value)
    }

    

}
