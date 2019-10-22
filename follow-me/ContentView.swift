//
//  ContentView.swift
//  follow-me
//
//  Created by Thibaut Mottet on 17/10/2019.
//  Copyright © 2019 Thibaut Mottet. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var addButton: some View {
        Button(action: {}) {
            Image(systemName: "plus.circle").font(.title)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: JourneyView()) {
                    JourneyRow()
                }
            }
            .navigationBarTitle(Text("Voyages"))
            .navigationBarItems(trailing: addButton)
        }
    }
}

struct JourneyRow: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Road trip en Auvergne")
                .font(.headline)
            Text("Du 25 sept. 2019 au 03 oct. 2019")
                .font(.subheadline)
        }
    }
}



struct MapView : UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: -33.523065, longitude: 151.394551)
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
