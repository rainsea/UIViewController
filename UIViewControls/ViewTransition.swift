//
//  ViewTransition.swift
//  UIViewControls
//
//  Created by RainSea on 10/25/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class ViewTransition: UIViewController {
    var frontView: UIImageView?
    var backView: UIImageView?
    var cardView: UIView?
    var showingBack = true

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        frontView = UIImageView(image: UIImage(named: "girlA.jpg"))
        backView = UIImageView(image: UIImage(named: "girlB.jpg"))
        let singleTap = UITapGestureRecognizer(target: self, action: Selector("flip"))
        singleTap.numberOfTapsRequired = 1
        let x = self.view.bounds
        let bound = backView!.image!.size
        let rect = CGRectMake(30, 100, bound.width, bound.height)
        cardView = UIView(frame: rect)
        cardView!.addGestureRecognizer(singleTap)
        cardView!.userInteractionEnabled = true
        cardView!.addSubview(frontView!)
        self.view.addSubview(cardView!)
    }
    func flip() {
        if(showingBack) {
            UIView.transitionFromView(backView!, toView: frontView!, duration: 1, options: UIViewAnimationOptions.TransitionCurlUp, completion: nil)
            showingBack = false
        } else {
            UIView.transitionFromView(frontView!, toView: backView!, duration: 1, options: UIViewAnimationOptions.TransitionCurlDown, completion: nil)
            showingBack = true
        }
    }
    

}
