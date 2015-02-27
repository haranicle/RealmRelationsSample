//
//  Sushi.swift
//  RealmRelationsSample
//
//  Created by haranicle on 2015/02/28.
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import Realm

class Sushi: RLMObject {
    dynamic var ingredient = "🐟"
    dynamic var rice = "🍚"
    dynamic var owner:Person? {
        return linkingObjectsOfClass("Person", forProperty: "sushi").first as Person?
    }
}
