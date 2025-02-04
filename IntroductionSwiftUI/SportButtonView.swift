//
//  SportButtonView.swift
//  SportButtonView
//
//  Created by Skyler Robbins on 1/15/25.
//

import SwiftUI

struct SportButton: View {
    let sport: Sports
    @Binding var selectedSport: Sports
    
    var body: some View {
        Button(sport.rawValue) {
            selectedSport = sport
        }
        .frame(width: 100, height: 100)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(.green)
        )
        .opacity(selectedSport == sport ? 1 : 0.4)
    }
}
