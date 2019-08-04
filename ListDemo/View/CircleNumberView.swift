//
//  CircleNumberView.swift
//  ListDemo
//
//  Created by Nafisa R on 8/4/19.
//  Copyright © 2019 com.nafisa. All rights reserved.
//

import SwiftUI

struct CircleNumberView: View {
    var num: NumberModel
    
    var body: some View {
        Text("\(num.title)")
        .frame(width: 150, height: 150)
        .background(Color.yellow)
        .foregroundColor(Color.white)
        .cornerRadius(75)
        .shadow(color: Color.black , radius: 5)
        .border(Color.black, width: 5, cornerRadius: 75)
        .font(.largeTitle)
    }
}

#if DEBUG
struct CircleNumberView_Previews: PreviewProvider {
    static var previews: some View {
        CircleNumberView(num: NumberModel(id: UUID(), value: 1, title: "1", description: "One"))
    }
}
#endif
