//
//  MapKits.swift
//  prueba
//
//  Created by Memo Figueredo on 9/23/19.
//  Copyright © 2019 DeTodoUnPoquito. All rights reserved.
//

import SwiftUI
import MapKit

struct  MapView: UIViewRepresentable {
  
    var coordinate: CLLocationCoordinate2D

   
    
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
    }
    
    // MARK: función que actualiza la vista

    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
      
           let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
           let region = MKCoordinateRegion(center: coordinate, span: span)
           uiView.setRegion(region, animated: true)
    }
}





struct MapKits_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
