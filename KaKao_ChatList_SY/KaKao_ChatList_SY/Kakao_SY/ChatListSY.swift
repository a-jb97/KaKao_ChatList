//
//  test.swift
//  Mogong_StudyWork
//
//  Created by 박서연 on 2023/06/27.
//

import SwiftUI

struct ChatListSY: View {
    var body: some View {
        NavigationStack {
            VStack {
                ChatListView()
            }
            .navigationTitle("채팅")
//            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    print("돋보기 눌림")
                } label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                }
                
                Button {
                    print("채팅추가 눌림")
                } label: {
                    Image(systemName: "plus.message")
                        .foregroundColor(.black)
                }
                
                Button {
                    print("설정 버튼 눌림")
                } label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(.black)
                }
                

            }
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        ChatListSY()
    }
}
extension View {
    func barTitle(_ title: String,
             size: NavigationBarItem.TitleDisplayMode = .large) -> some View {
        self.navigationBarTitle(title, displayMode: size)
    }
}
