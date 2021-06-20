//
//  HomeHeader.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 19/06/2021.
//

import SwiftUI

struct HomeHeader: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Good Morning,")
                Text("Damola")
            }
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 25))
            CircleAvatarView(imageName: "10", backgroundColor: Color.theme.blueColor)
                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding()
        }
    }
}




struct HomeHeader_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeader()
            .previewLayout(.sizeThatFits)
    }
}
