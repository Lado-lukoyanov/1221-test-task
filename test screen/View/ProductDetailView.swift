//
//  ProductDetailView.swift
//  test screen
//
//  Created by Владимир  Лукоянов on 30.01.2024.
//

import SwiftUI


struct ProductInfo: Identifiable {
    var id = UUID()
    var title: String
    var value: String
}

struct ProductDetailView: View {
    let productTitle = "Добавка ''Липа'' к чаю 200 г"
    let description = "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенок сосудов"
    let characteristics: [ProductInfo] = [
        ProductInfo(title: "Производство", value: "Россия, Краснодарский край"),
        ProductInfo(title: "Энергетическая ценность, ккал/100г", value: "25 ккал, 105 кдж"),
        ProductInfo(title: "Белки/100г", value: "0,1 г"),
        ProductInfo(title: "Жиры/100г", value: "1,3 г"),
        ProductInfo(title: "Углеводы/100г", value: "3,3 г"),
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(productTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 32))
                    .lineLimit(2)
                    .padding(.bottom, 10.0)
                
                Text("Описание")
                    .fontWeight(.bold)
                    .padding(.bottom, 10.0)

                Text(description)
                    .padding(.bottom, 10.0)
                
                Text("Основные характеристики")
                    .fontWeight(.bold)
                    .padding(.bottom, 10.0)
                
                ForEach(characteristics) { characteristic in
                    DottedLineView(title: characteristic.title, value: characteristic.value)
                }
                
                Text("Все характеристики")
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                    .padding(.bottom, 10.0)
            }
            .padding(20)
        }
    }
}
