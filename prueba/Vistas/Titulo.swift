//
//  Titulo.swift
//  prueba
//
//  Created by Memo Figueredo on 9/23/19.
//  Copyright © 2019 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI

struct Titulo: View {
    
    var titulo: Text
    var subtitulo: Text
    
    var body: some View {
               VStack{
                titulo
//            Text("Parque Nacional")
                .font(.largeTitle)
                .foregroundColor(.init(red:0.11, green:0.61, blue:0.99))
                .bold()
                HStack(alignment: .top) {
                    subtitulo
//                Text("Joshua Tree National Park")
                .font(.subheadline)
               .foregroundColor(.init(red:0.17, green:0.23, blue:0.28))
               }
                
//                .shadow(color: .init(red:0.15, green:0.80, blue:0.97), radius: 10, x: 2, y: 2)
        }

    }
}

struct Titulo_Previews: PreviewProvider {
    static var previews: some View {
        Titulo(titulo: Text("Parque Nacional"), subtitulo: Text("Joshua Tree National Park"))
    }
}
