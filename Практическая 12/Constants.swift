//
//  Constants.swift
//  Практическая 12
//
//  Created by Артем Ситников on 19.02.2023.
//

import UIKit

enum Constants {
    enum Fonts {
        static var headingFont: UIFont {
            UIFont.systemFont(ofSize: 40 , weight: .semibold)
        }
        static var font1: UIFont {
            UIFont.systemFont(ofSize: 20 , weight: .regular)
        }
        static var font2: UIFont {
            UIFont.systemFont(ofSize: 25 , weight: .thin)
        }
    }
    enum Colors {
        static var myColor1: UIColor? {
            UIColor(named: "MyColor1")
        }
        static var myColor2: UIColor? {
            UIColor(named: "MyColor2")
        }
        static var myColor3: UIColor? {
            UIColor(named: "MyColor3")
        }
    }
    enum Image {
        static let star = UIImage(named: "star")
    }
    
    enum Text {
        static let heading = Bundle.main.localizedString(forKey: "Hotel Moscow", value: "", table: "Localizable")
        static let text1 = Bundle.main.localizedString(forKey: "The hotel is located in St. Petersburg on the banks of the Neva", value: "", table: "Localizable")
        static let text2 = Bundle.main.localizedString(forKey: "Invites you to stay in one of the 843 rooms", value: "", table: "Localizable")
    }
    
}
