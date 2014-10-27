//
//  AnimationbyTimer.swift
//  UIViewControls
//
//  Created by RainSea on 10/26/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class AnimationbyTimer: UIViewController {
    var timer: NSTimer?
    var cat: UIImageView?
    var size: CGSize?
    var center: CGPoint?
    var vX: CGFloat?
    var vY: CGFloat?
    var newX: CGFloat?
    var newY: CGFloat?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        cat = UIImageView(image: UIImage(named: "cat_grumpy.png"))
        self.view.addSubview(cat!)
        vX = 50
        vY = 50
        self.startAnimation()
        //add button
        let stopAnimate = UIButton(frame: CGRect(x: 10 , y: 200, width: 100, height: 40))
        let bound = self.view.bounds
        stopAnimate.backgroundColor = UIColor.grayColor()
        stopAnimate.center = CGPoint(x:bound.size.width * 0.5, y: bound.size.height * 0.9)
        stopAnimate.setTitle("Animate!", forState: UIControlState.Normal)
        stopAnimate.addTarget(self, action:"stopAnimation" , forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(stopAnimate)
    }
    func startAnimation(){
        timer = NSTimer.scheduledTimerWithTimeInterval(0.2, target: self, selector: "animateCat:", userInfo: nil, repeats: true)
        timer!.fire()
    }
    
    func animateCat(timer: NSTimer){
        center = self.cat!.center
        size = self.cat!.bounds.size
        
        newX = center!.x + vX!
        newY = center!.y + vY!
        if ((newX < size!.width / 2) || (newX > self.view.bounds.size.width - size!.width/2)) {
            vX! = -vX!
        }
        
        if ((newY < 40 + size!.height / 2) || (newY > self.view.bounds.size.height - size!.height / 2)) {
            vY! = -vY!
        }
        newX = center!.x + vX!
        newY = center!.y + vY!
        
        self.cat!.center = CGPointMake(newX! , newY!);
    }
    
    func stopAnimation(){
        if(timer!.valid){
            timer!.invalidate()
            timer == 0
        } else {
            self.startAnimation()
        }
    }

    
}
