//
//  MapView.swift
//  TryTingg
//
//  Created by Darot on 24/04/2022.
//
import MapKit
import SwiftUI

struct MapView: View {
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -1.286389, longitude: 36.817223),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    let champions:[Champion]
    init(){
        champions = Champion.champions()
        print("\(champions)")
    }
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: champions) { champion in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: champion.latitude, longitude: champion.longitude)) {
                NavigationLink(destination: DetailView(listItem: champion)){
                    Image(champion.country)
                        .resizable()
                        .frame(width: 80, height: 40)
                        .clipShape(Circle())
                        .shadow(radius: 3)
                }
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
