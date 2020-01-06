import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.setDefaultView()
    }
    
    // MARK: Set navigation title to logo image
    public func setNavigationItemTitle(style: NavigationTitleStyle, title: String?) {
        
        switch style {
        case .logo:
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
        case .title:
            if let name = title {
                let navController = BaseNavigationViewController()
                navController.navigationBar.tintColor = UIColor(named: "App_Main_Color")
                self.navigationItem.title = name
            }
        }
    }
    
    // MARK: Set default View.
    private func setDefaultView() {
        
        // Set1: NavigationItem backBarButton.
        let backButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationItem.backBarButtonItem = backButton
        
        // Set2: VC background view.
        if let pattern = UIImage(named: "App-BackGround") { //加入背景圖
            let bk = UIColor(patternImage: pattern) //把背景圖變成顏色
            
            // change view background color.
            self.view.backgroundColor = bk
        }
    }
    
    // MARK: Set View.
    public func setView() { }
}
