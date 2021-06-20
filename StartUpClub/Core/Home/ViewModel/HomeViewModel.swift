//
//  HomeViewModel.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 20/06/2021.
//

import Foundation

class HomeViewModel: ObservableObject{
    @Published var talks: [Talk] = []
    
    
    init() {
        getLatestTalk()
    }
    
    private func getLatestTalk(){
        let  currentTalks : [Talk] = [
            Talk(name: "What's New in iOS 15", description: "We will talk about everything all the lastest feaures in iOS15", users: room1Users, totalUsers: 400, onlineUsers: 320),
            Talk(name: "Catching up with WWDC 2021", description: "We will talk about everything all the lastest feaures in iOS15", users: room2Users, totalUsers: 270, onlineUsers: 150),
            Talk(name: "Getting started with SwiftUI 3.0", description: "We will talk about everything all the lastest feaures in iOS15", users: room3Users, totalUsers: 760, onlineUsers: 540),
            Talk(name: "iOS Nigeria Tech Talk", description: "We will talk about everything all the lastest feaures in iOS15", users: room4Users, totalUsers: 300, onlineUsers: 159),
            
        ]
        
        self.talks = currentTalks
    }
    
    
    var room1Users: [RoomUser] = [
        RoomUser(name: "Yinka", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Kelvin", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Kinsley", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Hope", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Janet", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Lopez", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Andre", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Edward", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Abdul", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Pawan", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Peruzzi", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Kings", isSpeaking: false, hasReaction: true),
    ]
    
    var room2Users: [RoomUser] = [
        RoomUser(name: "Lola", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Juliet", isSpeaking: true, hasReaction: false),
        RoomUser(name: "James", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Everton", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Dammak", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Lopez", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Quadri", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Kunle", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Abdul", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Chijioke", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Babajide", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Prosper", isSpeaking: false, hasReaction: false),
    ]
    
    var room3Users: [RoomUser] = [
        RoomUser(name: "Christian", isSpeaking: true,hasReaction: false),
        RoomUser(name: "Michael", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Niklaus", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Elijah", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Hope", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Lopez", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Rebbecca", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Adama", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Abdul", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Hafiz", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Lampard", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Prosper", isSpeaking: false, hasReaction: false),
    ]
    
    var room4Users: [RoomUser] = [
        RoomUser(name: "Damola", isSpeaking: true, hasReaction: false),
        RoomUser(name: "Daniel", isSpeaking: true, hasReaction: true),
        RoomUser(name: "Michael", isSpeaking: true,hasReaction: false),
        RoomUser(name: "Hope", isSpeaking: true, hasReaction: true),
        RoomUser(name: "Aishat", isSpeaking: true, hasReaction: true),
        RoomUser(name: "Davido", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Mercy", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Edward", isSpeaking: false, hasReaction: true),
        RoomUser(name: "Tim", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Pawan", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Kunle", isSpeaking: false, hasReaction: false),
        RoomUser(name: "Ruth", isSpeaking: false, hasReaction: true),
    ]
}
