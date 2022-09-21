import UIKit

// Extension
// 기능 확장
// structure, class, enum, protocol

// 숫자(int) 짝수, 홀수
extension Int {
    var oddOrEven: String {
        if self % 2 == 0 {  // self -> 객체 그 자신
            return "Even"
        }
        return "Odd"
    }
}

3.oddOrEven
 

// UIColor
// mainColor1 = xxx
// mainColor2 = xxx
// subColor2 = xxx

extension UIColor {
    class var mainColor1: UIColor {     // class var
        UIColor(red: 50/255, green: 70/255, blue: 120/255, alpha: 1)
    }
}

var button = UIButton()
button.titleLabel?.textColor = .mainColor1
