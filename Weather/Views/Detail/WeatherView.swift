//
//  WeatherView.swift
//  Weather
//
//  Created by Oncu Can on 14.07.2022.
//

import SwiftUI

struct WeatherView: View {
    @State private var searchText = ""
    var searchResults: [Forecast] {
        if searchText.isEmpty {
            return Forecast.cities
        } else {
            return Forecast.cities.filter { $0.location.contains(searchText)
            }
        }
    }
    
    var body: some View {
        ZStack {
//            Mark Background
            Color.background
                .ignoresSafeArea()
            
//            Mark Weather Widgets
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(searchResults) { forecast in
                        WeatherWidget(forecast: forecast)
                    }
                }
            }
            .safeAreaInset(edge: .top) {
                EmptyView()
                    .frame(height: 110)
            }
        }
        .overlay {
//            Mark Navigation Bar
            NavigationBar(searchText: $searchText)
        }
        .navigationBarHidden(true)
//        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search for a city or airport")
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        WeatherView()
            .preferredColorScheme(.dark)
        }
    }
}
