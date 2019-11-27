//
//  ViewController.swift
//  Example
//
//  Created by 神崎H亚里亚 on 2019/11/27.
//  Copyright © 2019 moxcomic. All rights reserved.
//

import UIKit
import AriaSwiftyChain

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton()
            .title("测试", for: .normal, .highlighted)
            .titleColor(.white, for: .normal, .highlighted)
            .backgroundColor(.red)
            .addToSuperview(view)
            .tap({
                print("被点击了")
                UIAlertController.show(withTitle: "被点击了")
            }).makeConstraints({ (make) in
                make.center.equalToSuperview()
                make.width.height.equalTo(50)
            })
        
        UILabel()
            .text("文本")
            .textColor(.black)
            .font(.systemFont(ofSize: 16))
            .addToSuperview(view)
            .makeConstraints({ (make) in
                make.top.equalTo(btn.snp.bottom).offset(10)
                make.centerX.equalTo(btn)
            })
        
        
    }
}

