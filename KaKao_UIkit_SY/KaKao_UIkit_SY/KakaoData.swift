//
//  KakaoData.swift
//  KaKao_UIkit_SY
//
//  Created by 박서연 on 2023/07/03.
//

import Foundation
import UIKit

struct TestData {
    let imageName: UIImage?
    let name: String
    let chat: String
    let date: String
    let notRead: String?
}

let testList: [TestData] = [

    TestData(imageName: UIImage(named: "르세라핌"), name: "르세라핌", chat: "Unforgiven, I'm a villain, I'm a-Unforgiven, 난 그 길을 걸어 Unforgiven, I'm a villain, I'm a-새 시대로 기억될 unforgiven", date: "2022.09.10",notRead: "4"),
    TestData(imageName: UIImage(named: "아이브"), name: "아이브", chat: "2021년 12월 1일에 데뷔한 스타쉽엔터테인먼트 소속의 대한민국 6인조 다국적 걸그룹이다. 그룹명인 IVE는 'I HAVE'의 축약형인 'I'VE'에서 유래되었으며, ‘우리가 가진 것들을 모두 당당히 보여 드리겠다.’는 포부를 담고 있다.", date: "2022.09.11", notRead: "14"),
    TestData(imageName: UIImage(named: "에스파"), name: "에스파", chat: "그룹명 'aespa (에스파)'는 ‘아바타 X 익스피리언스 (Avatar X Experience)’를 표현한 ‘æ[읽는법]’와 양면이라는 뜻의 영단어 ‘aspect’를 결합해 만든 이름이다.[4] 그룹명을 æspa로 표기할 때도 있다.", date: "2022.03.10", notRead: "25"),
    TestData(imageName: UIImage(named: "퀸카"), name: "퀸카", chat: "안녕하세요", date: "2022.09.10", notRead: nil),
    TestData(imageName: UIImage(named: "Cat01"), name: "나는야 고양이", chat: "우리집 고양이는 귀염다", date: "2023.06.10", notRead: "1"),
    TestData(imageName: UIImage(named: "Dog01"), name: "나는야 강아지", chat: "안녕하세요. 저는 귀여운 강아지입니다. 댕댕!", date: "2023.06.01", notRead: nil),
    TestData(imageName: UIImage(named: "GOOG"), name: "구글", chat: "구글은 구글 검색을 중심으로 스마트폰 운영체제인 안드로이드와 유튜브 사업, 클라우드 사업을 하는 미국의 기업이다. 다양한 구글 서비스들과 함께 '전 세계의 모든 정보들을 체계화하여 모든 사용자가 유익하게 사용할 수 있도록 한다'라는 사명을 가지고 사업을 하고 있다. ~~~~", date: "2022.12.10", notRead: nil),
    TestData(imageName: UIImage(named: "NFLX"), name: "넷플릭스", chat: "안녕하세요!!@!@!@!@", date: "2023.07.01", notRead: nil),
    TestData(imageName: UIImage(named: "GOOG"), name: "구글2", chat: "안녕하세요~~!!!!", date: "2023.07.02", notRead: "15"),
    TestData(imageName: UIImage(named: "NIKE"), name: "나이키", chat: "움하하하하하", date: "2023.06.11", notRead: "17")
]


