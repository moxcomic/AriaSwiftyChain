//
//  UIButtonExtension.swift
//  AriaSwiftySelf
//
//  Created by 神崎H亚里亚 on 2019/11/27.
//  Copyright © 2019 moxcomic. All rights reserved.
//

import UIKit
import SnapKit

public extension UIButton {
    @discardableResult
    func title(_ title: String?, for state: UIControl.State...) -> UIButton {
        state.forEach { self.setTitle(title, for: $0) }
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor?, for state: UIControl.State...) -> UIButton {
        state.forEach { self.setTitleColor(color, for: $0) }
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?, for state: UIControl.State...) -> UIButton {
        state.forEach { self.setImage(image, for: $0) }
        return self
    }
    
    @discardableResult
    func backgroundImage(_ image: UIImage?, for state: UIControl.State...) -> UIButton {
        state.forEach { self.setBackgroundImage(image, for: $0) }
        return self
    }
    
    @discardableResult
    func attributedTitle(_ attributedTitle: NSAttributedString?, for state: UIControl.State...) -> UIButton {
        state.forEach { self.setAttributedTitle(attributedTitle, for: $0) }
        return self
    }
    
    @discardableResult
    func titleEdgeInsets(_ edgeInsets: UIEdgeInsets) -> Self {
        self.titleEdgeInsets = edgeInsets
        return self
    }
    
    @discardableResult
    func titleEdgeInsets(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> UIButton {
        self.titleEdgeInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    
    @discardableResult
    func imageEdgeInsets(_ edgeInsets: UIEdgeInsets) -> Self {
        self.imageEdgeInsets = edgeInsets
        return self
    }
    
    @discardableResult
    func imageEdgeInsets(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> UIButton {
        self.imageEdgeInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    
    @discardableResult
    func frame(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> UIButton {
        self.frame = CGRect(x: x, y: y, width: width, height: height)
        return self
    }
    
    @discardableResult
    func size(width: CGFloat, height: CGFloat) -> UIButton {
        self.frame.size = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    func backgroundColor(_ color: UIColor) -> UIButton {
        self.backgroundColor = color
        return self
    }
    
    func make(_ closure: (_ make: ConstraintMaker) -> Void) {
        self.snp.makeConstraints { (a) in
            closure(a)
        }
    }
}
