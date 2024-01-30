//
//  MainView.swift
//  test screen
//
//  Created by Владимир  Лукоянов on 30.01.2024.
//

import SwiftUI


struct MainView: View {
    var body: some View {
        VStack{
            HeaderView()
            ScrollView(){
                ImageView()
                ProductDetailView()
                ReviewsView()
            }
            Spacer()
            Divider()
            BottomView()
        }
    }
}
