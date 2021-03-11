//
//  ContentView.swift
//  prueba
//
//  Created by Memo Figueredo on 9/23/19.
//  Copyright © 2019 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
     @EnvironmentObject var userData: UserData
    
    var landmark: Landmark
    
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
   
    var body: some View {
            
        VStack{
            
            // MARK:Vista Titulo

            Titulo(titulo: Text(landmark.name), subtitulo: Text(landmark.park))
            
            // MARK:Vista Mapa
            MapView(coordinate: landmark.locationCoordinate)
            .frame( height: 300)
            
            // MARK:Vista Imagen
            CircleImage(image: landmark.image)
            
            // MARK:Vista Header
            contenido(name: Text(landmark.name), nameTwo: Text(landmark.park), nameTree: Text(landmark.state))
                .padding()
            
            VStack{
                HStack{
                    Text("Marque su Parque Favorito")
                    .foregroundColor(.init(red:0.11, green:0.61, blue:0.99))
                    .bold()
                    .padding()
                    
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }

            }
               Spacer()
           }
           .navigationBarTitle(Text(landmark.name), displayMode: .inline)
            
            
        }
    

    
    }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[0])
        .environmentObject(UserData())
    }
}


