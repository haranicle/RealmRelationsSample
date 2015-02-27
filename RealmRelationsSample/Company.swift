//
//  Company.swift
//  RealmRelationsSample
//
//  Created by haranicle on 2015/02/28.
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import Realm

class Company: RLMObject {
    dynamic var name = ""
    dynamic var fund = 100000000
    dynamic var employees:[Person] {
        return linkingObjectsOfClass("Person", forProperty: "company") as [Person]
    }
}
