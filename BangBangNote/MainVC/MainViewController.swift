import Foundation
import UIKit

class MainViewController: BaseViewController {
    
    @IBOutlet weak var appLogoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setNavigationItemTitle(style: .logo, title: nil)
        self.setView()
    }
    
    // MARK: Set view.
    override func setView() {
        self.logoAnimation()
    }
    
    // MARK: Logo animation.
    private func logoAnimation() {
        UIView.animate(withDuration: 1.5,
                       delay: 0.5,
                       options: [.curveEaseInOut],
                       animations: {
                        self.appLogoImageView.image = nil },
                       completion: nil)
    }
    
}
