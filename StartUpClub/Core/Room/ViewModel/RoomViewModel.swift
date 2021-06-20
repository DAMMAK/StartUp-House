//
//  RoomViewModel.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 20/06/2021.
//

import Foundation

class RoomViewModel: ObservableObject{
    @Published var roomUsers: [RoomUser] = []
    
    init() {
        loadUsers()
    }
    
    
    private func loadUsers(){
        let users:[RoomUser] = [
            RoomUser(name: "Damola", isSpeaking: true, hasReaction: true),
            RoomUser(name: "Daniel", isSpeaking: true, hasReaction: true),
            RoomUser(name: "Michael", isSpeaking: true, hasReaction: true),
            RoomUser(name: "Hope", isSpeaking: true, hasReaction: true),
            RoomUser(name: "Aishat", isSpeaking: true, hasReaction: true),
            RoomUser(name: "Davido", isSpeaking: false, hasReaction: true),
            RoomUser(name: "Mercy", isSpeaking: false, hasReaction: true),
            RoomUser(name: "Edward", isSpeaking: false, hasReaction: true),
            RoomUser(name: "Tim", isSpeaking: false, hasReaction: true),
            RoomUser(name: "Pawan", isSpeaking: false, hasReaction: true),
            RoomUser(name: "Kunle", isSpeaking: false, hasReaction: true),
            RoomUser(name: "Ruth", isSpeaking: false, hasReaction: true),
        ]
        
        roomUsers = users
    }
}
