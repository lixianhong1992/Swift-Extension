//
//  UIImage+Extension.swift
//  测试-01-照片选择
//
//  Created by teacher on 15/8/7.
//  Copyright © 2015年 itheima. All rights reserved.
//

import UIKit

extension UIImage {
    
    // 缩放图像的目标
    // 1. 图像要等比例缩放
    // 2. 统一的缩放`宽度`
    func scaleImage(width: CGFloat) -> UIImage {
        
        // 1. 如果图像本身很小，直接返回
        if size.width < width {
            return self
        }
        
        // 计算目标尺寸
        let height = size.height * width / size.width
        let s = CGSize(width: width, height: height)
        
        // 2. 使用图像上下文重新绘制图像
        // 1> 开启上下文
        UIGraphicsBeginImageContext(s)
        
        // 2> 绘图
        drawInRect(CGRect(origin: CGPointZero, size: s))
        
        // 3> 从当前上下文拿到结果
        let result = UIGraphicsGetImageFromCurrentImageContext()
        
        // 4> 关闭上下文
        UIGraphicsEndImageContext()
        
        // 5> 返回结果
        return result
    }
}
