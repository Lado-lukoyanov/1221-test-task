//
//  HeaderView.swift
//  test screen
//
//  Created by Владимир  Лукоянов on 30.01.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.left")
                    .imageScale(.large)
                    .foregroundColor(.green)
                Spacer()
                Image(systemName: "doc")
                    .imageScale(.large)
                    .foregroundColor(.green)
                Image(systemName: "square.and.arrow.up")
                    .imageScale(.large)
                    .foregroundColor(.green)
                Image(systemName: "heart")
                    .imageScale(.large)
                    .foregroundColor(.green)
            }
            .padding(.horizontal, 20.0)
        }
        Divider()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
