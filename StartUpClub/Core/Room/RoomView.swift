//
//  RoomView.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 19/06/2021.
//

import SwiftUI

struct RoomView: View {
    let room: Talk
    
//    @StateObject var roomVM = RoomViewModel()
    @State private var userThought:String = ""
    @Environment(\.presentationMode) var presentationMode

    
    let layout = [
        GridItem(.flexible(minimum: 12)),
        GridItem(.flexible(minimum: 12)),
        GridItem(.flexible(minimum: 12)),
    ]
    
    var body: some View {
        ZStack{
            Color.theme.backgroundColor.ignoresSafeArea()
            //            Color.green
            VStack{
                HStack {
                    Image(systemName: "chevron.down")
                        .font(.system(size: 20))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    Spacer()
                    Text(room.name)
                    Spacer()
                }.padding(.leading)
                .padding(.top, 30)
                .padding(.bottom, 30)
                ScrollView{
                    LazyVGrid(columns: layout, spacing:20){
                        ForEach(room.users, id: \.self) { roomUser in
                            RoomUserAvatarView(user: roomUser)
                        }
                    }
                }
                
                ZStack{
                    Color.theme.primaryColor
                    VStack {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 60, height: 6, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.top, 35)
                        
                        HStack{
                            TextField("", text: $userThought)
                                .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 0))
                                .modifier(PlaceholderStyle(showPlaceHolder: userThought.isEmpty, placeholder: "Type a thought here..."))
                                .font(.system(size: 14))
                                .frame(width: 320, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.theme.navTextColor)
                                .cornerRadius(30)
                                .font(.caption2)
                                .padding()
                            
                            
                            Image(systemName: "paperplane.fill")
                                .font(.system(size: 20))
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.theme.primaryColor)
                                .background(Color.white)
                                .cornerRadius(50)
                            Spacer()
                        }
                        HStack{
                            HStack{
                                Text("✌🏼")
                                Text("Leave qiuetly")
                                    .foregroundColor(.theme.navTextColor)
                            }
                            .font(.system(size: 13))
                            .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
                            .background(Color.theme.buttonColor)
                            .cornerRadius(30)
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                            
                            Spacer()
                            HStack(spacing:0){
                                Text("✋🏼")
                                    .font(.system(size: 12))
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 10)
                                    //                                .frame(width: 40, height: 40)
                                    .background(Color.theme.buttonColor)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                CircleAvatarView(imageName: "10", backgroundColor: Color.theme.buttonColor)
                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .padding(.trailing, 20)
                            }
                            
                            
                        }
                        .frame(height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 20)
                        .background(Color.theme.backgroundColor)
                        .cornerRadius(radius: 30, corners: [.topLeft, .topRight])
                        
                    }
                    
                    
                    
                }
                .frame(height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(radius: 30, corners: [.topLeft, .topRight])
                //                .padding(.top, 10)
                
            }
            //            .padding()
            //            .padding(.bottom, 0)
            
        }
    }
    
}


struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView(room: HomeViewModel().talks[0])
            .preferredColorScheme(.light)
    }
}
