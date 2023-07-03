//
//  ChatListView.swift
//  Mogong_StudyWork
//
//  Created by 박서연 on 2023/06/27.
//

import SwiftUI

struct ChatListView: View {
    

    let listData: [ChatData] = chatList

    func sortChatListByDate() -> [ChatData] {
        let sortedChatList = listData.sorted { $0.date > $1.date }
        return sortedChatList
    }
    
    var body: some View {
        List {
            ForEach(0..<sortChatListByDate().count, id: \.self) { data in
                VStack {
                    HStack {
                        // 프로필 이미지 불러오기
                        Image("\(sortChatListByDate()[data].imageName)")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .font(.system(size: 32))
//                            .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.clear, lineWidth: 1))
                            .padding(.trailing, 10) // 이미지랑 채팅 스택 사이 공백을 위한 패딩
                        
                        VStack { // 프로필 이름과 내용 가져오기
                            HStack {
                                Text("\(sortChatListByDate()[data].name)")
                                    .padding(.bottom, 3)
                                Spacer()
                                Text("\(sortChatListByDate()[data].date)")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color(.lightGray))
                            }
                            HStack {
                                Text("\(sortChatListByDate()[data].chat)")
                                    .lineLimit(2) // 내용 2줄로 제한해서 가져오기
                                    .font(.system(size: 14))
                                    .foregroundColor(Color(.gray))
                                Spacer()
                                
                                // nil 일 때 값을 없애기 위해서 if let으로 만들기
                                if let read = sortChatListByDate()[data].notRead {
                                    Text("\(read)")
                                        .padding(.leading, 5)
                                        .padding(.trailing, 5)
                                        .background(.red)
                                        .font(.system(size: 14))
                                        .foregroundColor(.white)
                                        .cornerRadius(9)
                                } else { // 값이 없을때도 padding을 맞추기 위해서 spacer 넣어주기
                                    Spacer()
                                }
                            }
                        }
                        Spacer()
                    }
                }
                .listRowSeparator(.hidden) // 구분선 지우기
            }
        }
        .listStyle(.plain)
    }
}

struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
    }
}
