//
//  HappeningNowView.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 19/06/2021.
//

import SwiftUI

struct HappeningNowView: View {
    
    let lastetsTalk: [Talk]
    
    @Binding var showRoom: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 13){
            Text("Happening now")
                .bold()
                .foregroundColor(.theme.accentColor)
                .padding(.top, 20)
            
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(lastetsTalk.indices, id: \.self) { talk in
                    RoomCard(talk: lastetsTalk[talk], showingDetails: $showRoom)
                        .padding(.bottom, 15)
                }
            }
            
        }
    }
}

struct HappeningNowView_Previews: PreviewProvider {
    static var previews: some View {
        HappeningNowView(lastetsTalk: [
            Talk(name: "What's New in iOS 15", description: "We will talk about everything all the lastest feaures in iOS15", users: [
                    RoomUser(name: "Damola", isSpeaking: true, hasReaction: true),
                    RoomUser(name: "Daniel", isSpeaking: true, hasReaction: true),
                    RoomUser(name: "Michael", isSpeaking: true, hasReaction: true),
            ], totalUsers: 400, onlineUsers: 320)
            ,
            
        ], showRoom: .constant(false))
        .padding(.horizontal, 20)
        .preferredColorScheme(.dark)
    }
}

struct RoomCard: View {
    //    let imageName: [String]
    //    let color: [Color]
    let talk: Talk
    
    @Binding var showingDetails: Bool
    @State private var showDetailsScreem: Bool = false
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing:15){
                Text(talk.name)
                    .font(.system(size: 18))
                    .bold()
                Text(talk.description)
                    .foregroundColor(.theme.accentColor)
                    .font(.system(size: 15))
                    .padding(.top, 3)
                HStack{
                    ForEach(0..<3){ item in
                        CircleAvatarView(imageName: "\(talk.users[item].imageName)", backgroundColor: Color.theme.colorList[talk.users[item].bgColor])
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                    }
                    
                    Spacer()
                    HStack{
                        Image(systemName: "person.fill")
                            .font(.caption)
                        
                        Text("\(talk.totalUsers)")
                            .font(.caption)
                        Image(systemName: "mic.fill")
                            .font(.caption)
                        Text("\(talk.onlineUsers)")
                            .font(.caption)
                        
                    }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 10)
                    .background(Color.theme.secondaryContainerColor)
                    .cornerRadius(10)
                }
            }
            .padding(.init(top: 25, leading: 15, bottom: 25, trailing: 15))
            .background(Color.theme.containerColor)
            .cornerRadius(20)
            .onTapGesture {
                showingDetails = true
                showDetailsScreem = true
            }
        }
        .sheet(isPresented: $showDetailsScreem, content: {
            RoomView(room:  talk)
        })
        
        
    }
    
    
}
