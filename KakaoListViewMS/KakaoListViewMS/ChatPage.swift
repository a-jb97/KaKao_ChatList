//
//  ChatPage.swift
//  KakaoListViewMS
//
//  Created by 전민석 on 2023/06/27.
//

import SwiftUI

struct ChatPage: View {
    var user: User = User(name: "카카오톡 선물하기", chat: "교환권은 잘 사용하셨나요? 소중한 후기를 남겨주세요.", imageName: "선물하기", date: "2023년 06월 13일")
    
    var body: some View {
        List {
            VStack{
                HStack{
                    Image("\(user.imageName)")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 80))
                        .aspectRatio(contentMode: .fit)
                    Text("\(user.name)")
                    
                }
                .padding()
                
                Text("\(user.chat)")
            }
        }
    }
}

struct ChatPage_Previews: PreviewProvider {
    static var previews: some View {
        ChatPage()
    }
}
