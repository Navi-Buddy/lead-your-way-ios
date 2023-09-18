//
//  MapViewController.swift
//  LeadYourWay
//
//  Created by user245074 on 9/18/23.
//

import Foundation
import MapKit



var latitude = 37.331516
var longitude = -121.891054	


final class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate{
    
    
    
    /* Current location display variable */
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    
    
    var locationManager: CLLocationManager?
    
    
    
    func checkIfLocationServiceIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
        } else {
            print("You must turn on the permission")
        }
    }
    
    
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else {return }
        
        switch locationManager.authorizationStatus {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is restricted due to parental control")
            
        case .denied:
            print("Denied Access. Change permissions in Settings")
            
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
            
        @unknown default:
            break
        }
    }
    
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
    
}
