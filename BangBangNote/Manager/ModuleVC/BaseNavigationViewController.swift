//
//  BaseNavigationViewController.swift
//  BangBangNote
//
//  Created by 林易興 on 2019/12/29.
//  Copyright © 2019 林易興. All rights reserved.
//

import UIKit

class BaseNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setView()
    }
    
    // MARK: Set Navigation View.
    private func setView() {
        if let pattern = UIImage(named: "App-BackGround") { //加入背景圖
            let bk = UIColor(patternImage: pattern) //把背景圖變成顏色
            
            // change navigation color.
            self.navigationBar.shadowImage = UIImage()
            self.navigationBar.barTintColor = bk
            self.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
            
            // change navigation title to logo image.
            if  let logo = UIImage(named: "icon_Use_App_Logo") {
                let imageView = UIImageView(image:logo)
                imageView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
                self.navigationItem.titleView = imageView
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
