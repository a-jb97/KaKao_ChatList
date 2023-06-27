//
//  User.swift
//  KakaoListViewMS
//
//  Created by 전민석 on 2023/06/27.
//

import Foundation

struct User: Identifiable {
    var id: UUID = UUID()
    var name: String
    var chat: String
    var imageName: String
    var date: String
}
