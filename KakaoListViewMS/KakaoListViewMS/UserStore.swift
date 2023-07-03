//
//  UserStore.swift
//  KakaoListViewMS
//
//  Created by 전민석 on 2023/06/27.
//

import Foundation

class UserStore: ObservableObject {
    @Published var users: [User] = []
    
    init() {
        users = [
            User(name: "카카오톡 선물하기", chat: "교환권은 잘 사용하셨나요? 소중한 후기를 남겨주세요.", imageName: "Gift", date: "6월 13일"),
            User(name: "고길동", chat: "종로로 갈까요~ 명동으로 갈까요~ 아니면, 청량리로 갈까요~ 많고만 사람들 중에~ 흠흠", imageName: "DefaultImage", date: "6월 13일"),
            User(name: "배스킨라빈스", chat: "쿠폰이 지급되었습니다. 쿠폰번호를 확인 해주세요!", imageName: "BaskinRobins", date: "6월 14일"),
            User(name: "이니스프리", chat: "(광고)[LIVE] 서두르세요! 라이브 혜택은 오전 9시 50분까지만⏳ 유효합니다. 이 기회를 놓치지 마세요!", imageName: "Innisfree", date: "6월 15일"),
            User(name: "원티드", chat: "[원티드] 추천 포지션 안내 : 전민돌님을 위한 개발 맞춤 포지션을 안내해 드립니다. 더 이상 이 메세지를 수신하지 않기를 원하신다면 수신 거부 버튼을 눌러주시기 바랍니다.", imageName: "Wanted", date: "6월 15일"),
            User(name: "에잇세컨즈", chat: "(광고)슈퍼세일 오픈! UP TO 50%🛍️ 2023 S/S 신상 제품을 할인 가격에 구매하실 수 있는 절호의 기회! 기간이 지나기 전에 빨리 서두르세요!", imageName: "Seconds8", date: "6월 16일"),
            User(name: "인프런", chat: "(광고)📢 와!!! 인프런에서 'FE'stival 열렸다!!! 💚 딱 2일 동안만 프론트엔드 강의를 50% 할인된 가격에 수강하실 수 있습니다. 이 절호의 기회를 놓치는 일이 없으시길 바랍니다!! ", imageName: "Infran", date: "6월 17일")
        ]
    }
}
