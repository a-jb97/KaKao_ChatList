//
//  ChatData.swift
//  Mogong_StudyWork
//
//  Created by 박서연 on 2023/06/27.
//

import Foundation

struct ChatData {
    let imageName: String
    let name: String
    let chat: String
    let date: String
    let notRead: Int?
}

let chatList: [ChatData] = [
        
        ChatData(imageName: "르세라핌", name: "르세라핌", chat: "Unforgiven, I'm a villain, I'm a-Unforgiven, 난 그 길을 걸어 Unforgiven, I'm a villain, I'm a-새 시대로 기억될 unforgiven", date: "2022.09.10", notRead: 4),
        ChatData(imageName: "아이브", name: "아이브", chat: "2021년 12월 1일에 데뷔한 스타쉽엔터테인먼트 소속의 대한민국 6인조 다국적 걸그룹이다. 그룹명인 IVE는 'I HAVE'의 축약형인 'I'VE'에서 유래되었으며, ‘우리가 가진 것들을 모두 당당히 보여 드리겠다.’는 포부를 담고 있다.", date: "2022.09.09", notRead: 12),
        ChatData(imageName: "에스파", name: "에스파", chat: "에스파는 SM 소속 연예인으로, 카리나가 제일 예뿌다.. ❤️‍🔥", date: "2022.09.09", notRead: 100),
        ChatData(imageName: "퀸카", name: "퀸카", chat: "안녕하세요", date: "2022.09.09", notRead: 44),
        ChatData(imageName: "Cat01", name: "나는야 고양이", chat: "한 줄이 길어지면 옆에 날짜랑 간격이 붙여질거 같은데 어떻게 할지 생각을 해봐야겠다.", date: "2022.09.10", notRead: nil),
        ChatData(imageName: "Dog01", name: "나는야 강아지", chat: "안녕하세요. 저는 귀여운 강아지입니다. 댕댕!", date: "2022.09.10", notRead: 1),
        ChatData(imageName: "GOOG", name: "구글", chat: "안녕하세요. 저는 구글입니다.", date: "2023.09.11", notRead: 2),
        ChatData(imageName: "NFLX", name: "넷플릭스", chat: "안녕하세요. 저는 넷플릭스입니다. 사실 저는 넷플릭스를 보지 않긴해요.", date: "2022.09.12", notRead: nil),
        ChatData(imageName: "GOOG", name: "구글2", chat: "안녕하세요. 구글2 데이터 입니다.", date: "2022.09.12", notRead: 4),
        ChatData(imageName: "NIKE", name: "나이키", chat: "움하하하하하", date: "2023.09.12", notRead: nil)
]

