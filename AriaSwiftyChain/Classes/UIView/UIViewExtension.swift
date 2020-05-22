//
//  UIViewExtension.swift
//  AriaSwiftyChain
//
//  Created by 神崎H亚里亚 on 2019/11/27.
//  Copyright © 2019 moxcomic. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxDataSources

public extension UIView {
    @discardableResult
    func addToSuperview(_ superview: UIView) -> UIView {
        superview.addSubview(self)
        return self
    }
    
    @discardableResult
    @objc
    func addToSuperview() -> (UIView) -> UIView {
        return { (superview) in
            superview.addSubview(self)
            return self
        }
    }
    
    @discardableResult
    func makeConstraints(_ closure: (_ make: ConstraintMaker) -> ()) -> UIView {
        self.snp.makeConstraints { (make) in
            closure(make)
        }
        return self
    }
    
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor) -> UIView {
        self.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    @objc
    func setBackgroundColor() -> (UIColor) -> UIView {
        return { (backgroundColor) in
            self.backgroundColor = backgroundColor
            return self
        }
    }
    
    @discardableResult
    func borderWidth(_ borderWidth: CGFloat) -> UIView {
        self.layer.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    func borderColor(_ borderColor: UIColor?) -> UIView {
        self.layer.borderColor = borderColor?.cgColor
        return self
    }
    
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> UIView {
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    func cornerRadius(corner: UIRectCorner, radii: CGSize) -> UIView {
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corner, cornerRadii: radii)
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
        return self
    }
    
    func getSuperViewController() -> UIViewController? {
        var r: UIResponder = self
        repeat { r = r.next! } while !(r is UIViewController)
        guard let vc = r as? UIViewController else { return UIViewController.topViewController() }
        return vc
    }
    
    @discardableResult
    func layerBackgroundColor(_ backgroundColor: UIColor) -> UIView {
        self.layer.backgroundColor = backgroundColor.cgColor
        return self
    }
    
    @discardableResult
    func gradient(colors: [UIColor], locations: [NSNumber], startPoint: CGPoint = CGPoint(x: 0, y: 0), endPoint: CGPoint = CGPoint(x: 1, y: 0)) -> UIView {
        let gradientView = CAGradientLayer()
        gradientView.frame = bounds
        gradientView.colors = colors.map { $0.cgColor }
        gradientView.locations = locations
        gradientView.startPoint = startPoint
        gradientView.endPoint = endPoint
        //layer.insertSublayer(gradientView, at: 0)
        layer.insertSublayer(gradientView, at: 0)
        return self
    }
    
    @discardableResult
    func gradient(colors: [UIColor], locations: [NSNumber], startPoint: CGPoint = CGPoint(x: 0, y: 0), endPoint: CGPoint = CGPoint(x: 1, y: 0), frame: CGRect = .zero) -> UIView {
        let gradientView = CAGradientLayer()
        gradientView.frame = frame == .zero ? bounds: frame
        gradientView.colors = colors.map { $0.cgColor }
        gradientView.locations = locations
        gradientView.startPoint = startPoint
        gradientView.endPoint = endPoint
        layer.insertSublayer(gradientView, at: 0)
//        layer.addSublayer(gradientView)
        return self
    }
    
    @discardableResult
    func createGradient(colors: [UIColor], locations: [NSNumber], startPoint: CGPoint = CGPoint(x: 0, y: 0), endPoint: CGPoint = CGPoint(x: 1, y: 0), frame: CGRect = .zero) -> CAGradientLayer {
        let gradientView = CAGradientLayer()
        gradientView.frame = frame
        gradientView.colors = colors.map { $0.cgColor }
        gradientView.locations = locations
        gradientView.startPoint = startPoint
        gradientView.endPoint = endPoint
        return gradientView
    }
}
