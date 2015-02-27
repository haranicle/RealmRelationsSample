//
//  Person.swift
//  RealmRelationsSample
//
//  Created by haranicle on 2015/02/27.
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import Realm

class Person: RLMObject {
    dynamic var name = ""
    dynamic var age = 0
    dynamic var face = Face()
    dynamic var sushi = RLMArray(objectClassName: "Sushi")
    dynamic var company = Company()
    dynamic var friends = RLMArray(objectClassName: "OtherPerson")

}
