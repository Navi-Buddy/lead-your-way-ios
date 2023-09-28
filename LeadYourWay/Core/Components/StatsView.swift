//
//  StatsView.swift
//  LeadYourWay
//
//  Created by user245074 on 9/20/23.
//

import SwiftUI

struct StatsView: View {
    var body: some View {
        HStack(spacing: 50){
            VStack(spacing:5){
                Text("10")
                Text("Stars")
            }
            
            VStack(spacing: 5){
                Text("10")
                Text("Bicycles")
            }
            
            VStack(spacing: 5){
                Text("Role")
                Text("User")
            }
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
