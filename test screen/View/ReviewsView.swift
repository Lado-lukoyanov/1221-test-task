//
//  ReviewsView.swift
//  test screen
//
//  Created by Владимир  Лукоянов on 30.01.2024.
//

import SwiftUI


struct ReviewsInfo: Identifiable {
    var id = UUID()
    var name: String
    var date: String
    var value: String
}

struct ReviewsView: View {
    let reviews:[ReviewsInfo] = [
        ReviewsInfo(name: "Александр .В", date: "7 мая 2021", value: "Хорошая добавка мне понравилась! Хочу чтобы все добавки были такими"),
        ReviewsInfo(name: "Александр .В", date: "7 мая 2021", value: "Хорошая добавка мне понравилась! Хочу чтобы все добавки были такими")
    ]
    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline){
                Text("Отзовы")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 22))
                    .lineLimit(2)
                Spacer()
                Text("Все 152")
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 18))
            }
            .padding(20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(reviews) {rewiewrs in

                        VStack(alignment: .leading) {
                            Text(rewiewrs.name)
                                .fontWeight(.bold)
                            Text(rewiewrs.date)
                                .foregroundColor(.gray)
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                            }
                            Text(rewiewrs.value)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .padding(5.0)
                        .frame(width: 320)
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(color: .gray, radius: 5, x: 0, y: 2)
                    
                }
                .padding()
                
                }
            }
            Button(action: {
                print("Отзыв оставлен")
            }) {
                Text("Оставить отзыв")
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(.green, lineWidth: 3)
                    )
                    .padding(.horizontal, 4)
            }
            .padding()

            
        }
        
    }
    
}


