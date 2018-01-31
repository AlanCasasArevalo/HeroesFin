//
//  String+Image.swift
//  HeroesFin
//
//  Created by Alan Casas on 31/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import UIKit
import SDWebImage

extension String{
    func loadImage(imageView: UIImageView) {
        let queue = OperationQueue()
        queue.addOperation {
            if let url = URL(string: self){
                OperationQueue.main.addOperation {
                    imageView.sd_setImage(with: url, placeholderImage: #imageLiteral(resourceName: "placeHolder"), options: [.continueInBackground, .refreshCached, .highPriority, .retryFailed], completed: nil)
                }
            }
        }
    }
}
