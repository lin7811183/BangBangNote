import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: default set View.
    public func defaultSetView() {
        if let pattern = UIImage(named: "App-BackGround") { //加入背景圖
            let bk = UIColor(patternImage: pattern) //把背景圖變成顏色
            
            // change navigation title to logo image.
            if  let logo = UIImage(named: "icon-Nav-Logo") {
                let imageView = UIImageView(image:logo)
                
                let navController = BaseNavigationViewController()
                
                let bannerWidth = navController.navigationBar.frame.size.width
                let bannerHeight = navController.navigationBar.frame.size.height
                
                let bannerX = bannerWidth / 2 - (logo.size.width) / 2
                let bannerY = bannerHeight / 2 - (logo.size.height) / 2
                
                imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
                imageView.contentMode = .scaleAspectFit
                
                self.navigationItem.titleView = imageView
            }
            
            // change view background color.
            self.view.backgroundColor = bk
        }
    }
    
    // MARK: Set View.
    func setView() { }
}
