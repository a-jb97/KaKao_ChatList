//
//  ViewController.swift
//  KakaoViewUIKitMS
//
//  Created by 전민석 on 2023/07/02.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var profileImage: [UIImageView]!
    @IBOutlet var userName: [UITextView]!
    @IBOutlet var chatPreview: [UITextView]!
    @IBOutlet var date: [UITextView]!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var chatPlusButton: UIButton!
    @IBOutlet weak var settingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let headlineStyle = UIFontDescriptor.preferredFontDescriptor(withTextStyle: .headline)
        let headline = UIFont(descriptor: headlineStyle, size: 16)
        
        let grayColor = UIColor.gray
        
        for index in 0...profileImage.count-1 {
            profileImage[index].layer.cornerRadius = profileImage[index].frame.size.width / 2.5
            profileImage[index].clipsToBounds = true
        }
        
        for index in 0...userName.count-1 {
            userName[index].font = headline
        }
        
        for index in 0...date.count-1 {
            date[index].textColor = grayColor
        }
        
        for index in 0...chatPreview.count-1 {
            chatPreview[index].delegate = self
            chatPreview[index].textContainer.maximumNumberOfLines = 2
            chatPreview[index].textContainer.lineBreakMode = .byTruncatingTail
            chatPreview[index].textColor = grayColor
            
        }
        
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        chatPlusButton.setImage(UIImage(systemName: "plus.message"), for: .normal)
        settingButton.setImage(UIImage(systemName: "gearshape"), for: .normal)
    }
}
