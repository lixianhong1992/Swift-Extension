//
//  UIColor+Extension.swift
//  我的微博
//
//  Created by teacher on 15/8/8.
//  Copyright © 2015年 itheima. All rights reserved.
//

import UIKit

extension UIColor {
    
    /// 生成随机颜色
    class func randomColor() -> UIColor {
        return UIColor(red: randomValue(), green: randomValue(), blue: randomValue(), alpha: 1.0)
    }
    
    /// 返回随机数
    private class func randomValue() -> CGFloat {
        // 为什么 255，0~254，256 0~255
        return CGFloat(arc4random_uniform(256)) / 255
    }
}
