//
//  ViewController.swift
//  UILabelButtonImageView
//
//  Created by RaoBo on 2018/1/30.
//  Copyright © 2018年 关键词. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.rbCreateALabel()
        self.rbCreateAButton()
        self.rbCreateUIImageView()
    }
    
    
    
    //MARK:- 1.创建一个UILabel
    func rbCreateALabel(){
        let aLabel = UILabel.init(frame: CGRect.init(x: 10, y: 50, width: 300, height: 40))
        aLabel.text = "不会的感觉哭笑不得死活都报错"
        aLabel.numberOfLines = 0
        aLabel.backgroundColor = UIColor.brown
        self.view.addSubview(aLabel)
    }
    
    //MARK:- 2.创建一个UIButton
    func rbCreateAButton(){
        let aBtn = UIButton.init(type: UIButtonType.custom)
        aBtn.frame = CGRect.init(x: 50, y: 100, width: 200, height: 50)
        aBtn.setTitle("点击button切换成中文", for: UIControlState.normal)
        aBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        aBtn.setTitleColor(UIColor.white, for: UIControlState.highlighted)
        aBtn.backgroundColor = UIColor.lightGray
        self.view.addSubview(aBtn)
        
        // 给UIButton添加添加点击事件
        aBtn.addTarget(self, action: #selector(clickBtnAction), for: UIControlEvents.touchUpInside)
    }
    
    // 注意点击事件钱要添加上 @objc，不然编译报错
    @objc func clickBtnAction(){
        print("点击了button，切换成中文")
        
        let imgV = self.view.viewWithTag(12345) as! UIImageView
        imgV.image = UIImage.init(named: "设置数据保险箱中文")
    }
    
    
    //MARK- 3.创建一个UIImageView
    func rbCreateUIImageView(){
        let rect1 = CGRect.init(x: 10, y: 200, width: 300, height: 300)
        let aImageView = UIImageView.init(frame: rect1)
        aImageView.image = UIImage.init(named: "设置数据保险箱中文")
        aImageView.tag = 12345 // 添加tag
        aImageView.isUserInteractionEnabled = true; // 打开交互
        
        // 创建一个tap手势
        let tapGes = UITapGestureRecognizer.init(target: self, action: #selector(clickImageGestureAction(gesture:)))
        aImageView.addGestureRecognizer(tapGes);
        
        self.view.addSubview(aImageView)
    }
    
    @objc func clickImageGestureAction(gesture:UITapGestureRecognizer){
        print("点击了图片 切换成英文")
        let imgV = self.view.viewWithTag(12345) as! UIImageView
        
        imgV.image = UIImage(named:"设置数据保险箱英文")
    }
}

