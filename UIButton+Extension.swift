//
//  UIButton+Extension.swift
//  我的微博
//
//  Created by teacher on 15/8/1.
//  Copyright © 2015年 itheima. All rights reserved.
//

import UIKit

extension UIButton {
    
    convenience init(title: String, fontSize: CGFloat = 12, color: UIColor = UIColor.darkGrayColor(), backColor: UIColor = UIColor.whiteColor()) {
        
        self.init()
        
        setTitle(title, forState: UIControlState.Normal)
        setTitleColor(color, forState: UIControlState.Normal)
        backgroundColor = backColor
        
        titleLabel?.font = UIFont.systemFontOfSize(fontSize)
    }
    
    convenience init(title: String, imageName: String, fontSize: CGFloat = 12, color: UIColor = UIColor.darkGrayColor()) {
        
        self.init()
        
        setTitle(title, forState: UIControlState.Normal)
        setImage(UIImage(named: imageName), forState: UIControlState.Normal)
        setTitleColor(color, forState: UIControlState.Normal)
        titleLabel?.font = UIFont.systemFontOfSize(fontSize)
    }
    
    convenience init(imageName: String) {
        self.init()
        
        setImage(imageName)
    }
    
    /// 使用图像名设置按钮图像
    func setImage(imageName: String) {
        setImage(UIImage(named: imageName), forState: UIControlState.Normal)
        // 提示：如果高亮图片不存在，不会设置
        setImage(UIImage(named: imageName + "_highlighted"), forState: UIControlState.Highlighted)
    }
}
