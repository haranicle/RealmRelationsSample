//
//  OtherPerson.swift
//  RealmRelationsSample
//
//  Created by haranicle on 2015/02/28.
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import Realm

class OtherPerson: RLMObject {
    dynamic var name = ""
    dynamic var age = 0
    dynamic var face = Face()
    dynamic var friends:[Person] {
        return linkingObjectsOfClass("Person", forProperty: "friends") as [Person]
    }
}
