import Foundation
import UIKit

class MainViewController: BaseViewController {
    
    @IBOutlet weak var appLogoImageView: UIImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        
        // Set default View.
        self.defaultSetView()
        
        // Set VC View.
        self.setView()
    }
    
    // MARK: Set VC View.
    override func setView() {
        self.logoAnimation()
    }
    
    // MARK: Logo Animation.
    private func logoAnimation() {
        UIView.animate(withDuration: 1.5,
                       delay: 0.5,
                       options: [.curveEaseInOut],
                       animations: {
                        self.appLogoImageView.image = nil
        }, completion: nil)
    }
    
}
