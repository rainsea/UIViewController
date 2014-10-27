//
//  BlockAnimation.swift
//  UIViewControls
//
//  Created by RainSea on 10/24/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class BlockAnimation: UIViewController {
    var cat: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bound = self.view.bounds
        self.view.backgroundColor = UIColor.whiteColor()
//        var imageView = UIImageView(frame: CGRect(x: 10, y: 70, width: 100, height: 100))
        cat = UIImageView(image: UIImage(named: "cat_grumpy.png"))
        cat!.contentMode = UIViewContentMode.TopLeft
//        imageView.image = cat!.image
        self.view.addSubview(cat!)
        
        //add button
        let animate = UIButton(frame: CGRect(x: 10 , y: 200, width: 100, height: 40))
        animate.backgroundColor = UIColor.grayColor()
        animate.center = CGPoint(x: bound.size.width * 0.5, y: bound.size.height * 0.9)
        animate.setTitle("Animate!", forState: UIControlState.Normal)
        animate.addTarget(self, action:"blockAnimation:" , forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(animate)

    }
    
    func blockAnimation(button: UIButton){
        let duration = 1.0
        UIView.animateWithDuration(duration, animations: {
            self.cat!.center = CGPointMake(300, 400)
            }, completion:  { finished in
            self.cat!.alpha = 0.5
        })
    }
}
