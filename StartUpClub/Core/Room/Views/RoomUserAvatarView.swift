//
//  RoomUserAvatarView.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 19/06/2021.
//

import SwiftUI

struct RoomUserAvatarView: View {
    let user: RoomUser
    
    
    var body: some View {
        VStack {
            ZStack{
                ZStack {
                    Image("\(user.imageName)").resizable()
                        .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.theme.colorList[user.bgColor])
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                OveryIcon(enableIconName: "mic.slash", disableIconName: "mic.fill")
                    .offset(x: 35.0, y: 35.0)
                
                if user.hasReaction {
                    ZStack {
                        Color.theme.containerColor
                        Text("🎉")
                            .font(.system(size: 15))
                    }
                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .offset(x: -35, y: 35.0)
                }
                
               
            }
            
            // User Name
            
            HStack(spacing:4){
                if(user.isSpeaking){
                    ZStack {
                        Text("*")
                            .font(.system(size: 19))
                            .offset(x: 0.0, y: 3.0)
                            .foregroundColor(.white)
                    }
                    .frame(width: 14, height: 14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.theme.primaryColor)
                    .cornerRadius(15)
                }

                
                Text(user.name)
                    .font(.system(size: 14))
            }
        }
        
    }
}

struct RoomUserAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        RoomUserAvatarView(user: RoomUser(name: "Damola", isSpeaking: true, hasReaction: true))
            .preferredColorScheme(.light)
    }
}

struct OveryIcon: View {
    let enableIconName: String
    let disableIconName: String
    
    @State private var isMuted: Bool = true
    
    var body: some View {
        ZStack {
            Color.theme.containerColor
            Image(systemName: isMuted ? enableIconName : disableIconName)
                .font(.system(size: 15))
                
                .onTapGesture {
                    isMuted.toggle()
                }
        }
        .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        
    }
}
