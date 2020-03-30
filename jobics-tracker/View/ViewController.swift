//
//  ViewController.swift
//  jobics-tracker
//
//  Created by Dmitrii Trifonov on 16.03.2020.
//  Copyright © 2020 Dmitrii Trifonov. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ts = TimeStamp()
        ts.tag = "Sometag"
        ts.job = "Somejob"
        
        let realm = try! Realm()
        
        try! realm.write {
            realm.add(ts)
        }
        
        print(realm.objects(TimeStamp.self))
        
        
        
    }


}

