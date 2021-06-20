//
//  CategorySlider.swift
//  StartUpClub
//
//  Created by Damola Adekoya on 19/06/2021.
//

import SwiftUI

struct CategorySlider: View {
    
    var categories = [ "🎨 Design",
                      "🌍 Flutter",
                      "🎯 Figma",
                      "👀 Clone",
                      "⛱ Saturday"
    ]
    
    var body: some View {
        ZStack {
            ScrollView(.horizontal, showsIndicators:false){
             
                HStack(spacing: 0) {
                    ForEach(categories.indices) { index in
                        CategoryItem(name: categories[index], color: Color.theme.colorList[index])

                    }
                }
            }
        }
    }
}

struct CategorySlider_Previews: PreviewProvider {
    static var previews: some View {
        CategorySlider()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

struct CategoryItem: View {
    let name: String
    let color: Color
    
    var body: some View {
        ZStack{
            Text(name)
                .foregroundColor(.black)
                .frame(width: 110, height: 33, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        }
        .background(color)
        .clipShape(Capsule())
        .padding(.trailing, 10)
    }
}
