//
//  ViewController.swift
//  RealmRelationsSample
//
//  Created by haranicle on 2015/02/27.
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import UIKit
import Realm

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("RLMRealm.defaultRealmPath() = \(RLMRealm.defaultRealmPath())")
        
        var face = Face()
        
        var salmonSushi = Sushi()
        var tunaSushi = Sushi()
        
        var company = Company()
        company.name = "CocoaKansai co."
        
        var alex = OtherPerson()
        alex.name = "Alex"
        var ben = OtherPerson()
        ben.name = "Ben"
        var charlie = OtherPerson()
        ben.name = "Charlie"
        
        var me = Person()
        me.name = "Me"
        me.face = face
        me.sushi.addObject(salmonSushi)
        me.sushi.addObject(tunaSushi)
        me.company = company
        me.friends.addObject(alex)
        me.friends.addObject(ben)
        me.friends.addObject(charlie)
        
        var you = Person()
        you.name = "You"
        you.friends.addObject(ben)
        
        let realm = RLMRealm.defaultRealm()
        realm.transactionWithBlock{
            realm.addObject(face)
            realm.addObject(salmonSushi)
            realm.addObject(tunaSushi)
            realm.addObject(company)
            realm.addObject(alex)
            realm.addObject(ben)
            realm.addObject(charlie)
            realm.addObject(me)
            realm.addObject(you)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

