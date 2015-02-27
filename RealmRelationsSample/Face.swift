//
//  Face.swift
//  RealmRelationsSample
//
//  Created by haranicle on 2015/02/28.
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import Realm

class Face: RLMObject {
    dynamic var eyes = "👀"
    dynamic var nose = "👃"
    dynamic var mouth = "👄"
    dynamic var owner:Person? {
        return self.linkingObjectsOfClass("Person", forProperty: "face").first as? Person
    }
}
