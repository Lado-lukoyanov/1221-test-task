//
//  BottomView.swift
//  test screen
//
//  Created by Владимир  Лукоянов on 30.01.2024.
//

import SwiftUI

struct BottomView: View {
    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline){
                Text("Шт")
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                Spacer()
                Text("Кг")
                    .foregroundColor(Color.gray)
            }
            .padding(.horizontal, 90.0)
            Divider()
            
            HStack {
                VStack(alignment: .leading){
                    Text("55.9 р/кг")
                        .font(.system(size: 32))
                        .fontWeight(.bold)
                    Text("199.0 ")
                        .foregroundColor(.gray)
                }
                Spacer()
                HStack {
                    Text("+")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                    Spacer()
                    VStack {
                        Text("1 шт")                            .foregroundColor(.white)
                            .font(.system(size: 19))
                            .fontWeight(.bold)
                        
                        Text("120.0р")                            .foregroundColor(.white)
                            .font(.system(size: 14))
                        
                        
                        
                    }.padding(.vertical, 10.0)
                    Spacer()
                    Text("-")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                    
                }
                .padding(.horizontal, 20.0)
                .frame(width: 180)
                .background(.green)
                .cornerRadius(40)
                
            }
            .padding(20)
            
        }
    }
}
