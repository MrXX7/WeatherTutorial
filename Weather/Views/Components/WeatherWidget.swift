//
//  WeatherWidget.swift
//  Weather
//
//  Created by Oncu Can on 14.07.2022.
//

import SwiftUI

struct WeatherWidget: View {
    var forecast: Forecast
    
    var body: some View {
        ZStack(alignment: .bottom) {
//            Mark Trapezoid
            Trapezoid()
                .fill(Color.weatherWidgetBackground)
                .frame(width: 342, height: 174)
            
//            Mark Content
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 8) {
//                    Mark Forecast Temperature
                    Text("\(forecast.temperature)")
                        .font(.system(size: 64))
                }
            }
        }
        .frame(width: 342, height: 184, alignment: .bottom)
    }
}

struct WeatherWidget_Previews: PreviewProvider {
    static var previews: some View {
        WeatherWidget(forecast: Forecast.cities[0])
            .preferredColorScheme(.dark)
    }
}
