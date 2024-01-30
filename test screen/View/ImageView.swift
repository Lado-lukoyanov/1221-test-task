//
//  ImageView.swift
//  test screen
//
//  Created by Владимир  Лукоянов on 30.01.2024.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Rectangle()
                    .fill(.green)
                    .frame(width: 130.0, height: 30.0)
                    .cornerRadius(6)
                Text("Цена по карте")
                    .foregroundColor(.white)
                }
            .padding(.leading, 20.0)
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("4.1")
                Text("|")
                Text("19 отзывов")
                    .foregroundColor(Color.gray)
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 60.0, height: 30.0)
                        .cornerRadius(6)
                    Text("-5 %")
                        .foregroundColor(Color.white)
                }
                
                
            }
            .padding(.horizontal, 20.0)
            
        }
    }
}
