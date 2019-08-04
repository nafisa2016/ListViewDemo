//
//  ListRow.swift
//  ListDemo
//
//  Created by Nafisa R on 7/29/19.
//  Copyright © 2019 com.nafisa. All rights reserved.
//

import Foundation
import SwiftUI

struct ListRow: View {
    var num: NumberModel
    
    var body: some View {
        
        VStack (alignment: .leading) {
            HStack {
                Spacer()
            }
            
            Text("\(num.title)")
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.leading)
            .lineLimit(nil)
            
            Text("\(num.description)")
            .font(.subheadline)
            .foregroundColor(.black)
            .multilineTextAlignment(.leading)
            .lineLimit(5)
            
            Spacer()
        }
    }
}

