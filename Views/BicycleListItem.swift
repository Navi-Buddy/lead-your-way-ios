//
//  BicycleListItem.swift
//  LeadYourWay
//
//  Created by user248115 on 10/29/23.
//

import SwiftUI

struct BicycleListItem: View {
    
    var images: [String] = []
    var location: String
    var distance: String
    var name: String
    var price: String
    var rating: String
    
    var body: some View {
        VStack(spacing:8){
            TabView{
                ForEach(images, id: \.self) {image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                }
            }
            .frame(height:300)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text(location)
                        .fontWeight(.semibold)
                    Text(distance)
                        .foregroundStyle(.gray)
                    
                    Text(name)
                        .foregroundStyle(.gray)
                    
                    Text(price)
                        .fontWeight(.semibold)
                    
                }
                
                Spacer()
                
                HStack(spacing:2){
                    Image(systemName: "star.fill")
                    
                    Text(rating)
                }
            }
            .font(.footnote)
        }
    }
}

