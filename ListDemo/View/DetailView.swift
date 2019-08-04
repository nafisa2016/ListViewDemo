//
//  DetailView.swift
//  ListDemo
//
//  Created by Nafisa R on 8/4/19.
//  Copyright © 2019 com.nafisa. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var num: NumberModel
    
    var body: some View {
        VStack(spacing: 50) {
            
            VStack(spacing: 50) {
                
                Text("\(num.description)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                
                CircleNumberView(num: num)
                
                HStack {
                    Spacer()
                }
            }
            .padding(.top, 90)
            .background(Color.gray)
            .edgesIgnoringSafeArea(.top)
                
            
            VStack {
                if (isEven(number: num.value)) {
                    Text("Even number")
                    .font(.headline)
                } else {
                    Text("Odd number")
                    .font(.headline)
                }
                
                HStack {
                    Spacer()
                }
            }
            
            Spacer()
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.bottom)
        
        
    }
    
    private func isEven(number: Int) -> Bool {
        if number.isMultiple(of: 2) {
            return true
        }
        return false
    }
}

#if DEBUG
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(num: NumberModel(id: UUID(), value: 1, title: "1", description: "One"))
    }
}
#endif
