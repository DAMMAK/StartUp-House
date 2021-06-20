//
//  Color.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 19/06/2021.
//

import Foundation
import SwiftUI


extension Color {
    static let theme = Theme()
}

struct Theme{
     let backgroundColor = Color("BackgroundColor")
     let yellowColor = Color("YellowColor")
    let blueColor = Color("BlueColor")
    let greenColor = Color("GreenColor")
    let purpleColor = Color("PurpleColor")
    let redColor = Color("RedColor")
    let whiteColor = Color("WhiteColor")
    let blackColor = Color("BlackColor")
    let containerColor = Color("ContainerColor")
    let accentColor = Color("AccentColor")
    let primaryColor = Color("PrimaryColor")
    let navTextColor = Color("NavTextColor")
    let secondaryContainerColor = Color("SecondaryContainerColor")
    let buttonColor = Color("ButtonColor")
    
    let colorList:[Color] = [
        Color("BlueColor"),
        Color("YellowColor"),
        Color("GreenColor"),
        Color("PurpleColor"),
        Color("RedColor"),
        Color("WhiteColor"),
        Color("BlackColor")
        
    ]
}
