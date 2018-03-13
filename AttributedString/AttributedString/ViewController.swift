//
//  ViewController.swift
//  AttributedString
//
//  Created by KiBen on 2018/1/15.
//  Copyright © 2018年 KiBen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let attribute = [NSForegroundColorAttributeName: UIColor.black, NSFontAttributeName : UIFont.systemFont(ofSize: 21)]
        let kernAttribute = [NSForegroundColorAttributeName: UIColor.black, NSFontAttributeName : UIFont.systemFont(ofSize: 21), NSKernAttributeName : NSNumber.init(value: 10)]
        
        let diamondImage = UIImage(named: "common_diamond")
        let goldImage = UIImage(named: "common_gold")
        
        let goldAttachment = NSTextAttachment()
        goldAttachment.image = goldImage
        
        let diamondAttachment = NSTextAttachment()
        diamondAttachment.image = diamondImage
        
        let label = UILabel(frame: CGRect(x: 0, y: 150, width: view.bounds.size.width, height: 30))
        label.textAlignment = .center
        view.addSubview(label)
        
        let mutableAttributeString = NSMutableAttributedString(string: "合计:", attributes: attribute)
        mutableAttributeString.append(NSAttributedString(attachment: goldAttachment))
        mutableAttributeString.append(NSAttributedString(string: " ", attributes: attribute))
        mutableAttributeString.setAttributes([NSKernAttributeName : NSNumber.init(value: 10)], range: NSMakeRange(mutableAttributeString.length - 1, 1))
        mutableAttributeString.append(NSAttributedString(string: "2500", attributes: attribute))
        mutableAttributeString.setAttributes([NSKernAttributeName : NSNumber.init(value: 10)], range: NSMakeRange(mutableAttributeString.length - 1, 1))
        mutableAttributeString.append(NSAttributedString(attachment: diamondAttachment))
        label.attributedText = mutableAttributeString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

