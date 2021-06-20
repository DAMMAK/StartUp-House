//
//  BottomNavBarView.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 19/06/2021.
//

import SwiftUI

struct BottomNavBarView: View {
    var body: some View {
        HStack{
            
            
            IconButton(iconName: "note")
            Spacer()
            HStack{
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.white)
                Text("Start Room")
                    .foregroundColor(.white)
                    .font(.caption)
                    .bold()
            }
            .frame(width: 120, height: 45)
            .background(Color.theme.primaryColor)
            .cornerRadius(15)
            Spacer()

            IconButton(iconName: "person.fill")
          
        }
    }
}

struct BottomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

struct IconButton: View {
    let iconName: String
    var body: some View {
        Image(systemName: iconName)
            .frame(width: 45, height: 45)
            .background(Color.theme.buttonColor)
            .cornerRadius(10)
    }
}
