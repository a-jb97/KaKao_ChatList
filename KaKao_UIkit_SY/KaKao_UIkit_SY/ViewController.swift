//
//  TestViewController.swift
//  Mogong_StudyWork_UIKit
//
//  Created by 박서연 on 2023/07/03.
//

import UIKit

class ViewController: UIViewController {

    private let tableView = UITableView()
    
    var finalData: [TestData] = testList
    
    let navigationBar : UINavigationBar = {
        let navigationBar = UINavigationBar()
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        navigationBar.tintColor = .black
        return navigationBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNaviBar()
        setupTableView()
        setupTableViewConstraints()

    }

    // 테이블뷰 오토레이아웃
    func setupTableView() {
        tableView.rowHeight = 100
        tableView.dataSource = self
        
        // 코드로 정의한 셀은, 재활용을 위해서는 따로 identifier를 지정해주어야함
        tableView.register(KakaoTableViewCell.self, forCellReuseIdentifier: "TestCell")

    }
    
    // 테이블 뷰 오토레이아웃 설정
    func setupTableViewConstraints() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
}

// MARK: - 네비게이션 뷰 extension
extension ViewController {
    // 네비게이션 뷰 세팅
    func setupNaviBar() {
        self.view.addSubview(navigationBar)
        self.view.backgroundColor = .white
        let safeArea = self.view.safeAreaLayoutGuide

        navigationBar.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
//        navigationBar.heightAnchor.constraint(equalToConstant: 40)
        navigationBar.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        navigationBar.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
            
        let navItem = UINavigationItem(title: "")
        
        // 글자 크기 조정
        let searchButton = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(tapGlassButton))
        let messageButton = UIBarButtonItem(image: UIImage(systemName: "plus.message"), style: .plain, target: self, action: #selector(tapGlassButton))
        let settingButton = UIBarButtonItem(image: UIImage(systemName: "gearshape"), style: .plain, target: self, action: #selector(tapGlassButton))
                              
        // 채팅 글자 조정
        let rightButton = UIBarButtonItem(title: "채팅", style: .plain, target: self, action: #selector(tapGlassButton))
        //글자크기 조정
        let fontAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: .bold)]
        rightButton.setTitleTextAttributes(fontAttributes, for: .normal)
        
        navItem.rightBarButtonItems = [messageButton, settingButton, searchButton]
        navItem.leftBarButtonItem = rightButton
        
        navigationBar.setItems([navItem], animated: true)
    }
    
    @objc func tapGlassButton() {
        print("tapgalssbutton")
    }
    
    func sortChatListByDate() -> [TestData] {
        let sortedChatList = finalData.sorted { $0.date > $1.date }
        return sortedChatList
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return finalData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell", for: indexPath) as! KakaoTableViewCell
        
        let indexInfo = sortChatListByDate()[indexPath.row]
        
        cell.mainImageView.image = indexInfo.imageName
        
        cell.nameLabel.text = indexInfo.name
        cell.chatLabel.text = indexInfo.chat
        cell.dateLabel.text = indexInfo.date
        cell.readLabel.text = indexInfo.notRead
        
        return cell
        
    }
}
