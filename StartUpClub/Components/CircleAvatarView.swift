//
//  CircleAvatarView.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 19/06/2021.
//

import SwiftUI

struct CircleAvatarView: View {
    let imageName: String
    let backgroundColor: Color
    
    var body: some View {
        ZStack{
            self.backgroundColor
            Image(self.imageName)
                .resizable()
            
//            ZStack {
//                Color.theme.backgroundColor
//                Image(systemName: "mic.slash")
//            }.frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
    }
}

struct CircleAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        CircleAvatarView(imageName: "1", backgroundColor: Color.theme.yellowColor)
            .previewLayout(.sizeThatFits)
    }
}
