//
//  ViewController.swift
//  GlobalImpactProject
//
//  Created by Davis, Keenan on 1/10/19.
//  Copyright © 2019 CTEC. All rights reserved.
//

import UIKit
import MapKit

class ImpactViewController: UIViewController
{
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var UIImageView: UIImageView!
    @IBOutlet weak var UIButton: UIButton!
    
    @IBAction func flyOver(_sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: 48.0196, longitude: 66.237)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 10.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        mapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
}

extension MKMapView
{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options:
            UIView.AnimationOptions.curveEaseIn, animations:
            {self.setRegion(zoomRegion, animated: true) }, completion: nil)
    }
}

