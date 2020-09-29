//
//  TripRecord.swift
//  RealmDemo
//
//  Created by Wasim on 29.09.20.
//

import Foundation
import RealmSwift

class TripRecording: Object {
    @objc dynamic var name: String?
    @objc dynamic var distance: String?
    @objc dynamic var speed: String?
}
