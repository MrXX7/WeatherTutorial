//
//  TabBar.swift
//  Weather
//
//  Created by Oncu Can on 9.07.2022.
//

import SwiftUI

struct TabBar: View {
    var action: () -> Void
    
    var body: some View {
        ZStack {
//            Mark Arc Shape
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay {
//                    Mark Arc Border
                    Arc()
                        .stroke(Color.tabBarBackground, lineWidth: 0.5)
                }
            
//            Mark Tab Items
            HStack {
//                Mark Expand Button
                Button {
                    action()
                }label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)
               }
                Spacer()
//                Mark Navigation Button
                NavigationLink {
                    WeatherView()
                } label: {
                    Image(systemName: "list.star")
                        .frame(width: 44, height: 44)
                }
            }
            .font(.title2)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action: {})
            .preferredColorScheme(.dark)
    }
}
