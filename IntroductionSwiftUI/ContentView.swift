//
//  ContentView.swift
//  IntroductionSwiftUI
//
//  Created by Skyler Robbins on 1/15/25.
//

import SwiftUI

@main
struct MyApp: App { // App struct is annotated with @main
    var body: some Scene {
        WindowGroup {
            ContentView() // Set ContentView as the initial view
        }
    }
}

struct ContentView: View {
    @State private var selectedSport: Sports = .basketball
    @State private var sportMessage = ""
    @State private var showMessage = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                
                Text("Favorite Sport")
                    .font(.largeTitle)
                
                Spacer()
                
                HStack {
                    SportButton(sport: .basketball, selectedSport: $selectedSport)
                    SportButton(sport: .football, selectedSport: $selectedSport)
                }
                HStack {
                    SportButton(sport: .soccer, selectedSport: $selectedSport)
                    SportButton(sport: .baseball, selectedSport: $selectedSport)
                }
                
                Spacer()
                
                Button("Submit") {
                    switch selectedSport {
                    case .basketball:
                        sportMessage = "You selected Basketball"
                    case .football:
                        sportMessage = "You selected Football"
                    case .soccer:
                        sportMessage = "You selected Soccer"
                    case .baseball:
                        sportMessage = "You selected Baseball"
                    }
                }
                .padding()
                .frame(width: 300)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.blue)
                )
                
                Text(sportMessage)
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}

enum Sports: String {
    case basketball = "Basketball"
    case football = "Football"
    case soccer = "Soccer"
    case baseball = "Baseball"
}
