//
//  HomeView.swift
//  Weather
//
//  Created by Oncu Can on 6.07.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
//            Background Color
            Color.background
                .ignoresSafeArea()
            
//            Background Image
            Image("Background")
                .resizable()
                .ignoresSafeArea()
//            House Image
            Image("House")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 257)
            VStack {
                Text("Montreal")
                    .font(.largeTitle)
                Spacer()
                VStack {
//                    Text("19°" + "\n" + "Mostly Clear")
                    Text("19°")
                     .font(.system(size: 96, weight: .thin))
                        .foregroundColor(.primary)
                    +
                    Text("\n")
                    +
                    Text("Mostly Clear")
                        .font(.title3.weight(.semibold))
                        .foregroundColor(.secondary)
                    
                    Text("H:24°   L:18°")
                        .font(.title3.weight(.semibold))
                }
                Spacer()
            }
            .padding(.top, 51)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
