import Foundation
import UIKit

class Animation {
    /*
        1. UIView 各動畫效果
     */
    
    func transitionsVC(vc: UIViewController) {
        UIView.animate(withDuration: 1.0,
                       delay: 0.0,
                       options: [.curveLinear],
                       animations: {
        },
                       completion: nil)
    }
}
