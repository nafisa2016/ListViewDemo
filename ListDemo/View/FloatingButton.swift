//
//  FloatingButton.swift
//  ListDemo
//
//  Created by Nafisa R on 7/29/19.
//  Copyright © 2019 com.nafisa. All rights reserved.
//

import SwiftUI

struct FloatingButtonView : View {
    @State var showingAlert = false
    @EnvironmentObject var userData: UserData
    @State var numCounter = 0
    
    var body: some View {
        Button(action: {
            print("tapped")
            
            self.showingAlert = true
            self.numCounter += 1
            self.userData.numbers.append(NumberModel(value: self.numCounter ,title: "\(self.numCounter)", description: self.getDesc(self.numCounter)))
        }) {
            Image(systemName: "plus")
            Text("Add")
                .foregroundColor(Color.black)
            
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Congrats"), message: Text("You have added a new number"), dismissButton: .default(Text("Got it!")))
        }
        .padding()
        .frame(width: 100, height: 100)
        .background(Color.orange)
        .foregroundColor(Color.white)
        .cornerRadius(50)
        .shadow(color: Color.black , radius: 5)
    }
    
    private func getDesc(_ num: Int) -> String {
        let formatter: NumberFormatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        return formatter.string(from: NSNumber(value: num))?.capitalized ?? ""
    }
}

#if DEBUG
struct FloatingButtonView_Previews : PreviewProvider {
    static var previews: some View {
        
        Group {
            FloatingButtonView()
            .environmentObject(UserData())
            .environment(\.colorScheme, .light)
            
            FloatingButtonView()
            .environmentObject(UserData())
            .environment(\.colorScheme, .dark)
        }
    }
}
#endif

