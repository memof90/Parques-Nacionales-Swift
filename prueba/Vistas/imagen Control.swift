//
//  imagen Control.swift
//  prueba
//
//  Created by Memo Figueredo on 9/23/19.
//  Copyright © 2019 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
         .shadow(radius: 10)
    }
}

struct imagen_Control_Previews: PreviewProvider {
    static var previews: some View {
         CircleImage(image: Image("turtlerock"))
       
    }
}
