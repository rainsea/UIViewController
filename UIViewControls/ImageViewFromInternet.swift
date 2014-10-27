//
//  ImageViewFromInternet.swift
//  UIViewControls
//
//  Created by Trinh Minh Cuong on 10/23/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class ImageViewFromInternet: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Lấy dữ liệu ảnh từ trên Internet
        let data = NSData(contentsOfURL: NSURL(string: "http://www.picgifs.com/clip-art/cartoons/tom-and-jerry/clip-art-tom-and-jerry-347829.jpg")!)!
        
        let image = UIImage(data: data)
        
        let photoView = UIImageView(image: image)
        photoView.frame = self.view.bounds
        photoView.contentMode = UIViewContentMode.ScaleAspectFit
        self.view.addSubview(photoView)

    }


}
