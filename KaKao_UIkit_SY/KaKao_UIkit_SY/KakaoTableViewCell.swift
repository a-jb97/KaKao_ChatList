//
//  KakaoTableViewCell.swift
//  KaKao_UIkit_SY
//
//  Created by 박서연 on 2023/07/03.
//

import UIKit


import UIKit

class KakaoTableViewCell: UITableViewCell {

    // MARK: - Cell 레이아웃 (이미지 1개, 라벨 2개)
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let chatLabel: UILabel = {
        let label = UILabel()
//        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - 추가 (날짜와 읽음 유무)
    let dateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let readLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        label.textColor = .gray
//        label.backgroundColor = .red
//        label.layer.cornerRadius = 20
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let firstStackView: UIStackView = { // nameLabel + dateLabel
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.alignment = .fill
        sv.distribution = .fill
        sv.spacing = 10
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let secondStackView: UIStackView = { // chatLabel + readLabel
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.alignment = .fill
        sv.distribution = .fill
        sv.spacing = 10
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    
    let stackView: UIStackView = { // firstStack + secondStack
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution  = .fill
        sv.alignment = .fill
        sv.spacing = 5
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setupStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - stackView 세팅 함수
    func setupStackView() {
        self.addSubview(mainImageView)
        self.addSubview(stackView)
        
        // firststackview에 이름과 날짜 라벨 추가
        firstStackView.addArrangedSubview(nameLabel)
        firstStackView.addArrangedSubview(dateLabel)
        
        secondStackView.addArrangedSubview(chatLabel)
        secondStackView.addArrangedSubview(readLabel)
        
        stackView.addArrangedSubview(firstStackView)
        stackView.addArrangedSubview(secondStackView)
        
//        stackView.addArrangedSubview(nameLabel)
//        stackView.addArrangedSubview(chatLabel)
    }
    
    // 레이아웃 업데이트
    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }

    // 이미지뷰를 동그랗게 만들기 위해서 프레임이 다 결정된 시점인 layoutSubviews를 활용함
    override func layoutSubviews() {
        super.layoutSubviews()
        self.mainImageView.clipsToBounds = true
//        self.mainImageView.layer.cornerRadius = self.mainImageView.frame.width/2
        self.mainImageView.layer.cornerRadius = 30
    }
    
    func setConstraints() { // 오토 레이아웃 제약 정의
        
        // 이미지 레이아웃
        NSLayoutConstraint.activate([
            mainImageView.heightAnchor.constraint(equalToConstant: 80),
            mainImageView.widthAnchor.constraint(equalToConstant: 80),
            mainImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            mainImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor)
        ])
        
        // 이름과 날짜 레이아웃
        NSLayoutConstraint.activate([
            nameLabel.widthAnchor.constraint(equalToConstant: 180),
//            chatLabel.widthAnchor.constraint(equalToConstant: 230),
            readLabel.widthAnchor.constraint(equalToConstant: 40),
            firstStackView.heightAnchor.constraint(equalToConstant: 30)
         ])
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: mainImageView.trailingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: self.mainImageView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.mainImageView.bottomAnchor)
        ])
    }
    
    
}
