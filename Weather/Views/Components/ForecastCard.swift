//
//  ForecastCard.swift
//  Weather
//
//  Created by Oncu Can on 14.07.2022.
//

import SwiftUI

struct ForecastCard: View {
    
    var forecast: Forecast
    var forecastPeriod: ForecastPeriod
    var isActive: Bool = true
    
    
    var body: some View {
        ZStack {
//       Mark Card
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.forecastCardBackground.opacity(isActive ? 1 : 0.2))
                .frame(width: 60, height: 146)
                .shadow(color: .black.opacity(0.25), radius: 10, x: 5, y: 4)
                .overlay {
//                    Mark Card Border
                    RoundedRectangle(cornerRadius: 30)
                        .strokeBorder(.white.opacity(isActive ? 0.5 : 0.2))
                        .blendMode(.overlay)
                }
                .innerShadow(shape: RoundedRectangle(cornerRadius: 30), color: .white.opacity(0.25), lineWidth: 1, offsetX: 1, offsetY: 1, blur: 0, blendMode: .overlay)
//            Mark Content
            VStack(spacing: 16) {
//                Mark Forecast Data
                Text(forecast.date, format: forecastPeriod == ForecastPeriod.hourly ? .dateTime.hour() : .dateTime.weekday())
                    .font(.subheadline.weight(.semibold))
                
                VStack (spacing: -4){
//                    Mark Forecast small icon
                    Image(forecast.icon)
                    
                }
                .frame(height: 42)
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 16)
            .frame(width: 60, height: 146)
        }
    }
}

struct ForecastCard_Previews: PreviewProvider {
    static var previews: some View {
        ForecastCard(forecast: Forecast.hourly[0], forecastPeriod: .hourly)
    }
}
