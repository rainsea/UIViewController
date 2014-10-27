//
//  DemoImage.swift
//  UIViewControls
//
//  Created by Trinh Minh Cuong on 10/23/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class DemoImage: UIViewController {
    var photoView: UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        photoView = UIImageView(image: UIImage(named: "playboy.jpg"))
        let bound = self.view.bounds
        photoView!.frame = self.view.bounds
        photoView!.contentMode = UIViewContentMode.ScaleAspectFit
        photoView!.center = CGPoint(x: bound.size.width * 0.5, y: bound.size.height * 0.5)
        photoView!.userInteractionEnabled = true //cho người dùng tương tác
        //photoView.multipleTouchEnabled = true //giảm tốc độ, nhưng cho phép ảnh nhận tương tác đa chạm
        
        photoView!.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "onPhotoTapped:"))
        self.view.addSubview(photoView!)
    }
    
    func onPhotoTapped(tap: UITapGestureRecognizer) {
        let tapAt = tap.locationInView(self.view)
        println("\(tapAt.x) - \(tapAt.y)")
    }

}
