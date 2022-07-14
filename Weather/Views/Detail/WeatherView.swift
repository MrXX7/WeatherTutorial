//
//  WeatherView.swift
//  Weather
//
//  Created by Oncu Can on 14.07.2022.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
//            Mark Background
            Color.background
                .ignoresSafeArea()
        }
        .overlay {
//            Mark Navigation Bar
            NavigationBar()
        }
        .navigationBarHidden(true)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
            .preferredColorScheme(.dark)
    }
}
