//
//  SearchBarView.swift
//  LeadYourWay
//
//  Created by user248115 on 10/29/23.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2){
                Text("Search")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Pick your bicycle style")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            Button{
            }label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundColor(.black)
            }
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchBarView()
}
