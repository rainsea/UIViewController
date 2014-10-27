//
//  AddRemove.swift
//  UIViewControls
//
//  Created by RainSea on 10/26/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class AddRemove: UIViewController {
    var add: UIButton?
    var remove: UIButton?
    var currentTopView: UIView?
    var currentGrayColor: CGFloat = 1.0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        
        add = UIButton(frame: CGRect(x: 20, y: 50, width: 100, height: 150))
        add!.setTitle("Add", forState: UIControlState.Normal)
        add!.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        add!.addTarget(self, action: "addView:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(add!)
        
        remove = UIButton(frame: CGRect(x: 255, y: 50, width: 100, height: 150))
        remove!.setTitle("Remove", forState: UIControlState.Normal)
        remove!.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        remove!.addTarget(self, action: "removeView:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(remove!)
        
        currentTopView = self.view
        }
    
    
    func addView(childView: UIView){
        let childView = UIView(frame: CGRectMake(0, 0, currentTopView!.bounds.size.width - 20, currentTopView!.bounds.size.width - 20))
        childView.backgroundColor = UIColor(red: currentGrayColor, green: currentGrayColor, blue: currentGrayColor, alpha: 1.0)
        self.currentTopView!.addSubview(childView)
        childView.center = CGPointMake(currentTopView!.bounds.size.width/2, currentTopView!.bounds.size.height/2)
        currentGrayColor -= 0.1
        currentTopView = childView
        
    }
    func removeView(tobeRemoveView: UIView){
        var tobeRemoveView = currentTopView
        if(tobeRemoveView != self.view){
            currentTopView = currentTopView!.superview
            tobeRemoveView!.removeFromSuperview()
            currentGrayColor += 0.1
        }
    }
    
}
