//
//  Database.swift
//  RestaurantsExplorer
//
//  Created by Shachar on 01/12/2018.
//  Copyright © 2018 Shachar. All rights reserved.
//

import Foundation
import RealmSwift

protocol DatabaseType {
    func saveSelectedCity(city: City)
    func getPreviousSearches() -> [City]
    func getCityById(cityId: String) -> City?
}

// swiftlint:disable force_try
class Database: DatabaseType {

    public func saveSelectedCity(city: City) {
        let realm = self.getRealm()
        try! realm.write {
            realm.add(city, update: true)
        }
    }
    
    public func getCityById(cityId: String) -> City? {
        let realm = self.getRealm()
        return realm.object(ofType: City.self, forPrimaryKey: cityId)
    }

    public func getPreviousSearches() -> [City] {
        let realm = self.getRealm()
        let elements = realm.objects(City.self)
        return Array(elements)
    }
    
    private func getRealm() -> Realm {
        do {
            return try Realm()
        } catch {
            Realm.Configuration.defaultConfiguration.deleteRealmIfMigrationNeeded = true
            return try! Realm()
        }
    }
}
