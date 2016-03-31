//
//  DiscipLugarViewController.swift
//  Judeinpro
//
//  Created by Adrian Camacho Soriano on 30/06/15.
//  Copyright (c) 2015 Adrian Camacho Soriano acaso. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class DiscipLugarViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    var nombreDis:String!
    var nombreLug:String!
    
    var datoLat:String!
    var datoLon:String!
    
    @IBOutlet weak var nomDiscip: UILabel!
    
    @IBOutlet weak var nomLugar: UILabel!

    @IBOutlet weak var Map: MKMapView!
    
    var locationManager:CLLocationManager! = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 0xfd/255, green: 0xe8/255, blue: 0xd7/255, alpha: 1.0)
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        
        Map.showsUserLocation = true
        Map.delegate = self
        
        nomDiscip.text = nombreDis as String
        nomLugar.text = nombreLug as String
        
        let lat = datoLat as NSString!
        let lon = datoLon as NSString!
        
        let location = CLLocationCoordinate2D(latitude: lat.doubleValue, longitude: lon.doubleValue)
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: location, span: span)
        Map.setRegion(region, animated: true)
        
        let anotacion = MKPointAnnotation()
        anotacion.coordinate = CLLocationCoordinate2DMake(lat.doubleValue, lon.doubleValue)
        Map.addAnnotation(anotacion)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
