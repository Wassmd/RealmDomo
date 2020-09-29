//
//  ViewController.swift
//  RealmDemo
//
//  Created by Wasim on 29.09.20.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let realm = try! Realm()

        print(realm.configuration.fileURL)

        let trip = TripRecording()
        trip.name = "Am Weser"
        trip.speed = "150"
        trip.distance = "1000"

        try! realm.write {
            realm.add(trip)
        }

        let trips = realm.objects(TripRecording.self).filter("name = 'Am Weser' ")

        print("trips:\(trips)")
    }
}

