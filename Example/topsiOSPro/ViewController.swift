//
//  ViewController.swift
//  topsiOSPro
//
//  Created by xiaojin20135@live.com on 05/25/2019.
//  Copyright (c) 2019 xiaojin20135@live.com. All rights reserved.
//

import UIKit
import topsiOSPro
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Topscomm"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //字符串相关
        let stringUIButton = UIButton()
        stringUIButton.setTitle("字符串相关", for: .normal)
        stringUIButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        self.view.addSubview(stringUIButton)
        stringUIButton.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            if #available(iOS 11.0, *) {
                make.top.equalTo(self.view.safeAreaLayoutGuide).offset(30)
            } else {
                make.top.equalTo(topLayoutGuide.snp.top).offset(30)
            }
        }
        stringUIButton.addTarget(self, action: #selector(manageString), for: .touchDown)
        
        //字符串相关
        let verifyUIButton = UIButton()
        verifyUIButton.setTitle("校验相关相关", for: .normal)
        verifyUIButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        self.view.addSubview(verifyUIButton)
        verifyUIButton.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalTo(stringUIButton.snp.bottom)
        }
        verifyUIButton.addTarget(self, action: #selector(verifyData), for: .touchDown)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //字符串相关
    @objc func manageString(){
        let stringViewController = StringViewController()
        stringViewController.title = "字符串相关"
        self.navigationController?.pushViewController(stringViewController, animated: true)
    }
    
    //字符串相关
    @objc func verifyData(){
        let stringViewController = VerifyDataViewController()
        stringViewController.title = "值校验"
        self.navigationController?.pushViewController(stringViewController, animated: true)
    }

    
    
}

