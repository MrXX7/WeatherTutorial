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
                    VStack(alignment: .leading, spacing: 2) {
//                        Mark Forecast Temperature Range
                        Text("H:\(forecast.high)°   L:\(forecast.low)°")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        
//                        Mark Forecast Location
                        Text(forecast.location)
                            .font(.body)
                            .lineLimit(1)
                    }
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 0) {
//                    Mark Forecast Large Icon
                    Image("\(forecast.icon) large")
                        .padding(.trailing, 4)
                    
//                    Mark Weather
                    Text(forecast.weather.rawValue)
                        .font(.footnote)
                        .padding(.trailing, 24)
                }
            }
            .foregroundColor(.white)
            .padding(.bottom, 20)
            .padding(.leading, 20)
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
