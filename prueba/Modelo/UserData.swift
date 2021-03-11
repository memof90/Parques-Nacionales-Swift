//
//  UserData.swift
//  prueba
//
//  Created by Memo Figueredo on 10/17/19.
//  Copyright © 2019 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI
import Combine


final class UserData: ObservableObject  {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
