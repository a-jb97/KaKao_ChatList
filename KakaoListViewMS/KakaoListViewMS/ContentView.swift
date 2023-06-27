//
//  ContentView.swift
//  KakaoListViewMS
//
//  Created by 전민석 on 2023/06/27.
//
import SwiftUI

struct ContentView: View {
    @ObservedObject var userStore: UserStore = UserStore()
    
    var body: some View {
        NavigationStack {
            List(userStore.users) { user in
                NavigationLink {
                    ChatPage(user: user)
                } label: {
                    VStack {
                        HStack {
                            Image("\(user.imageName)")
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 26))
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60)
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("\(user.name)")
                                        .bold()
                                        .font(.system(size: 15))
                                    
                                    Spacer()
                                    
                                    Text("\(user.date)")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color.gray)
                                }
                                
                                Text("\(user.chat)")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color.gray)
                                    .lineLimit(2)
                            }
                        }
                    }
                    .navigationTitle("채팅")
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
