//
//  TextFieldModifier.swift
//  LeadYourWay
//
//  Created by user245074 on 9/27/23.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)

    }
}
