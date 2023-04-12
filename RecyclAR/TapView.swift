//
//  TapView.swift
//  RecyclAR
//
//  Created by Soo Bin on 4/11/23.
//

import SwiftUI

struct TapView: View {
    
    @State private var isIdentifying = false
    
//    struct CircleButton: View {
//
//        @Binding var isIdentifying: Bool
//
//        var body: some View {
//            Button(action: {}) {
//                Image(systemName: "circle.fill")
//                    .foregroundColor(Color.gray)
//                    .overlay(
//                        Image(systemName: "circle.fill")
//                            .foregroundColor(Color.white)
//                            .scaleEffect(0.45)
//                    )
//                    .font(.system(size: 70))
//                    .frame(width: 70, height: 70)
//                    .opacity(0.22)
//            }
//        }
//
//    }
    
    var body: some View {
        VStack {
            Text(isIdentifying ? "Identifying" : "Tap to Position")
                .foregroundColor(.white)
                .font(Font.custom("WorkSans-Bold", size: 24))
                .padding(.bottom, 16)
            Button(action: {}) {
                Image(systemName: "circle.fill")
                    .foregroundColor(isIdentifying ? Color.green : Color.gray)
                    .overlay(
                        Image(systemName: "circle.fill")
                            .foregroundColor(isIdentifying ? Color.green : Color.white)
                            .scaleEffect(0.45)
                    )
                    .font(.system(size: 70))
                    .frame(width: 70, height: 70)
                    .opacity(0.22)
                    .onTapGesture {
                        isIdentifying.toggle()
                    }
            }
        }
        .padding()
        .frame(width: 380.46, height: 592.11)
        .background(
            Color.black
                .opacity(0.7)
                .blur(radius: 7.5)
                .cornerRadius(20)
        )
    }
    
    
}



struct TapView_Previews: PreviewProvider {
    static var previews: some View {
        TapView()
    }
}
