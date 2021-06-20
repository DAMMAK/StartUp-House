//
//  ContentView.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 19/06/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showRoomDetails: Bool = false
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        ZStack{
            Color.theme.backgroundColor.ignoresSafeArea()
            VStack {
                VStack {
                    HomeHeader()
                    CategorySlider()
                    UpcomingTalk()
                    HappeningNowView(lastetsTalk: homeViewModel.talks, showRoom: $showRoomDetails)
                }
    
                BottomNavBarView()
            }
            .padding()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

