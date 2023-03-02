//
//  ViewController.swift
//  Практическая 12
//
//  Created by Артем Ситников on 19.02.2023.
//

import UIKit



class ViewController: UIViewController {
    
    // MARK: - Views
    func imagee () -> UIImageView {
        let image = UIImageView()
        image.image = Constants.Image.star
        return image
    }
//    var imageView : UIImageView = {
//        let image = UIImageView()
//        image.image = Constants.Image.star
//        return image
//    }()

    private lazy var lable1 : UILabel = {
        let lable = UILabel()
        lable.text = Constants.Text.heading
        lable.textColor = Constants.Colors.myColor1
        lable.font = Constants.Fonts.headingFont
        return lable
    }()
    private lazy var lable2 : UILabel = {
        let lable = UILabel()
        lable.text = Constants.Text.text1
        lable.textColor = Constants.Colors.myColor2
        lable.font = Constants.Fonts.font1
        lable.numberOfLines = 0
        lable.sizeToFit()
        
        return lable
    }()
    private lazy var lable3 : UILabel = {
        let lable = UILabel()
        let string = Constants.Text.text2
        let attributed : NSMutableAttributedString =
            NSMutableAttributedString(string: string)
        if let commaIndex = string.firstIndex(of: "8"){
            attributed.addAttribute(.foregroundColor, value: UIColor.systemRed, range: NSRange(string.startIndex ..< commaIndex, in: string))
            
            attributed.addAttribute(.foregroundColor, value: UIColor.systemBlue, range: NSRange(commaIndex ..< string.endIndex, in: string))
//            attributed.addAttribute(.foregroundColor, value: UIFont.systemFont(ofSize: 20, weight: .semibold), range: NSRange(commaIndex ..< string.endIndex, in: string))
        }
        
        lable.attributedText = attributed
        lable.font = Constants.Fonts.font2
        lable.numberOfLines = 0
        lable.sizeToFit()
        return lable
    }()

    private lazy var stackView2 : UIStackView = {
        let stackViewn = UIStackView()
        stackViewn.axis = .horizontal
        stackViewn.spacing = 3
        stackViewn.alignment = .center
        stackViewn.addArrangedSubview(imagee())
        stackViewn.addArrangedSubview(imagee())
        stackViewn.addArrangedSubview(imagee())
        stackViewn.addArrangedSubview(imagee())
        return stackViewn
    }()
    private lazy var stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        
        stackView.addArrangedSubview(lable1)
        stackView.addArrangedSubview(stackView2)
        stackView.addArrangedSubview(lable2)
        stackView.addArrangedSubview(lable3)
//        stackView.addArrangedSubview(imagee())
        return stackView
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        setupConstraints()
    }
    
    private func setupViews(){
        view.addSubview(stackView)
    }
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        stackView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
    }


}

