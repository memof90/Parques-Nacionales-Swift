//
//  LandmarkList.swift
//  prueba
//
//  Created by Memo Figueredo on 10/8/19.
//  Copyright © 2019 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
//      @State var showFavoritesOnly = false
    
    var body: some View {
      
        
        NavigationView {
            
        List{
            
            Toggle(isOn:$userData.showFavoritesOnly ) {
                
                Text("Solo Favoritos")
            }
            
            ForEach(userData.landmarks /*id: \.id*/) { landmark in
            
        if !self.userData.showFavoritesOnly || landmark.isFavorite{
            
            NavigationLink(destination: ContentView(landmark: landmark)){
                
               LandmarkRow(landmark: landmark)
                
             }
             
        }
    }
//            LandmarkRow(landmark: landmarkData[0])
//            LandmarkRow(landmark: landmarkData[1])
 }
            
        .navigationBarTitle(Text("Parques Nacionales"))
        
        }
          
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        LandmarkList()
        
//        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
//        }
            .environmentObject(UserData())
        

    }
}
