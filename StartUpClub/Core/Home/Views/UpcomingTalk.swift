//
//  UpcomingTalk.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 19/06/2021.
//

import SwiftUI

struct UpcomingTalk: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Upcoming")
                .font(.headline)
                .bold()
                .padding(.bottom, 10)
                .padding(.top, 30)
            VStack{
                HStack{
                    Rectangle()
                        .fill(Color.red)
                        .frame(width:3, height: 50)
                    VStack(alignment:.leading, spacing:5){
                        Text("10:00 - 20:00")
                            .font(.system(size: 14))
                        //                                    .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 5, trailing: 0))
                        
                        Text("Design talks and chill")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 16))
                    }.padding(.leading, 6)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .font(.system(size: 20))
                    
                }
            }
            .foregroundColor(.white)
            .padding()
            .frame(width: UIScreen.main.bounds.width - 30, height: 100)
            .background(Color.theme.primaryColor)
            .cornerRadius(20)
        }
    }
}
struct UpcomingTalk_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingTalk()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
