//
//  ListView.swift
//  ListDemo
//
//  Created by Nafisa R on 7/29/19.
//  Copyright © 2019 com.nafisa. All rights reserved.
//

import SwiftUI

struct ListView : View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                HStack {
                    Spacer()
                }
                
                ZStack {
                    VStack {
                        List {
                            Section(header: Text("Numbers")
                            .font(.headline)
                            .foregroundColor(.blue)
                            ) {
                                ForEach(userData.numbers) { number in
                                    NavigationLink(destination: DetailView(num: number)) {
                                        ListRow(num: number)
                                    }
                                }
                            }
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .listRowBackground(Color(red: 100 / 255, green: 200 / 255, blue: 200 / 255))
                            .padding()
                        }
                        .padding(40.0)
                        .listStyle(.grouped)
                    }
                    
                    
                    // floating button only on the screen with the list
                    FloatingButtonView()
                    .offset(x: 100, y: 240)
                    .padding(.bottom, 5)
                }
            }
            .background(Color(red: 100 / 255, green: 100 / 255, blue: 200 / 255))
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle(Text("List Demo"), displayMode: .large)
        }
    }
}

#if DEBUG
struct ListView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ListView()
            .environmentObject(UserData())
            .environment(\.colorScheme, .light)
            
            ListView().environmentObject(UserData()).environment(\.colorScheme, .dark)
        }
    }
}
#endif
