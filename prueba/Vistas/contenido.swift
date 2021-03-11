//
//  contenido.swift
//  prueba
//
//  Created by Memo Figueredo on 9/23/19.
//  Copyright © 2019 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI

struct contenido: View {
    var name: Text
    var nameTwo: Text
    var nameTree: Text
    var body: some View {
        
                VStack(alignment: .leading) {
                    
                    HStack {
                    name
                    .font(.title)
                    }
        
                HStack(alignment: .top) {
                    nameTwo
                    .font(.subheadline)
                    Spacer()
                    nameTree
                        .font(.subheadline)
                }
            }
            
        }
      
    }


struct contenido_Previews: PreviewProvider {
    static var previews: some View {
        contenido(name: Text("Turtle Rock"), nameTwo: Text("Joshua Tree Park"), nameTree: Text("California"))
    }
}
