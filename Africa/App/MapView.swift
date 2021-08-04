//
//  MapView.swift
//  Africa
//
//  Created by joao camargo on 17/07/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        // number 1 basic map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
            item in
            // A PIN old style always static
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            //B new style always static
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            //C Custom annotation (it could be interactive)
            //            MapAnnotation(coordinate: item.location) {
            //                Image("logo").resizable().scaledToFit().frame(width: 32, height: 32, alignment: .center)
            //            }
            
            //D Interativo
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }).overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                .resizable()
                .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack{
                        Text("Latitude").font(.footnote).fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)").font(.footnote)
                            .foregroundColor(.white)
                    }
                    HStack{
                        Text("Longitude").font(.footnote).fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)").font(.footnote)
                            .foregroundColor(.white)
                    }
                    Divider()
                }
                
            }.padding(.vertical,22)
            .padding(.horizontal,16)
            .background(Color.black.cornerRadius(8).opacity(0.68)).padding(), alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
