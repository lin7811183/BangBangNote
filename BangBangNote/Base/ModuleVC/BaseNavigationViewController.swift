import UIKit

class BaseNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setView()
    }
    
    // MARK: Set navigation view.
    private func setView() {
        if let pattern = UIImage(named: "App-BackGround") { //加入背景圖
            let bk = UIColor(patternImage: pattern) //把背景圖變成顏色
            
            // setting 1: navigation background color.
            self.navigationBar.shadowImage = UIImage()
            self.navigationBar.barTintColor = bk
            self.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default) // 去除 naigation 底線.
            
            // setting 2: navigation title color.
            if let color = UIColor(named: "App_Main_Color") {
                let textAttributes = [NSAttributedString.Key.foregroundColor: color]
                self.navigationBar.titleTextAttributes = textAttributes
                self.navigationBar.tintColor = color
            }
        }
    }
    
}
