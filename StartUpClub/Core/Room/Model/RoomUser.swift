//
//  RoomUser.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 20/06/2021.
//

import Foundation

struct RoomUser: Hashable {
    let name: String
    let isSpeaking: Bool
    let imageName: Int = Int.random(in: 1...12)
    let bgColor: Int = Int.random(in: 0...5)
    let hasReaction: Bool
}
