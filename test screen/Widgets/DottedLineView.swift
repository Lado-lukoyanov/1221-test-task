//
//  DottedLineView.swift
//  test screen
//
//  Created by Владимир  Лукоянов on 30.01.2024.
//

import SwiftUI

struct DottedLineView: View {
    var title: String
    var value: String
    
    private let line = String(repeating: ".", count: 25)
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(line)
                .foregroundColor(.gray)
            Spacer()
            Text(value)
                .multilineTextAlignment(.trailing)
        }
        .padding(.bottom, 10.0)
    }
}
