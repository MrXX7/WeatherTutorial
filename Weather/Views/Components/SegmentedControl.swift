//
//  SegmentedControl.swift
//  Weather
//
//  Created by Oncu Can on 13.07.2022.
//

import SwiftUI

struct SegmentedControl: View {
    @Binding var selection: Int
    
    var body: some View {
        VStack(spacing: 5) {
//            Mark Segmented Buttons
            HStack {
                Button {
                    withAnimation(.easeInOut(duration: 0.5)){
                        selection = 0
                    }
                } label: {
                    Text("Hourly Forecast")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.5)){
                        selection = 1
                    }
                } label: {
                    Text("Weekly Forecast")
                }
            }
                    .font(.subheadline.weight(.semibold))
                    .foregroundColor(.secondary)
            
//            Mark Seperator
            Divider()
                .foregroundColor(.white.opacity(0.5))
                .blendMode(.overlay)
                .shadow(color: .black.opacity(0.2), radius: 0, x: 0, y: 1)
                .blendMode(.overlay)
            
                .overlay {
            //            Mark Underline
                    HStack {
                        Divider()
                    .frame(width: UIScreen.main.bounds.width / 2, height: 3)
                    .background(Color.underline)
                .blendMode(.overlay)
                    }
                    .frame(maxWidth: .infinity, alignment: selection == 0 ? .leading : .trailing)
                    .offset(y: -1)
        }
    }
     .padding(.top, 25)
    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl(selection: .constant(0))
    }
}
