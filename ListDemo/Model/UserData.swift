//
//  UserData.swift
//  ListDemo
//
//  Created by Nafisa R on 7/29/19.
//  Copyright © 2019 com.nafisa. All rights reserved.
//

import Foundation

import SwiftUI
import Combine

final class UserData: BindableObject  {
    let willChange = PassthroughSubject<Void, Never>()

    var numbers = numData {
        willSet {
            willChange.send()
        }
    }
}

