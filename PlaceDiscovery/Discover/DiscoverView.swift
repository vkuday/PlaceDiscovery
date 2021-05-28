//
//  ContentView.swift
//  PlaceDiscovery
//
//  Created by Volkan on 5/21/21.
//

import SwiftUI

extension Color {
    static let discoverBackground = Color(.init(white: 0.95, alpha: 1))
}

struct DiscoverView: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
    }
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9988777041, green: 0.7013868093, blue: 0.2592144012, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.585804522, blue: 0.2402157187, alpha: 1))]), startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                
                Color.discoverBackground
                    .offset(y:400)
                
                ScrollView {
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Where do you want to go?")
                        Spacer()
                        
                    }.font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(.init(white: 1, alpha: 0.3)))
                    .cornerRadius(10)
                    .padding(16)
                    
                    DiscoverCategoriesView()
                    
                    VStack {
                        PopularDestinationsView()
                        
                        PopularRestaurantsView()
                        
                        TrendingCreatorsView()
                    }.background(Color.discoverBackground)
                    .cornerRadius(16)
                    .padding(.top, 32)
                }
            }
            
            .navigationTitle("Discover")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
