//
//  MainViewController.swift
//  jobics-tracker
//
//  Created by Dmitrii Trifonov on 30.03.2020.
//  Copyright © 2020 Dmitrii Trifonov. All rights reserved.
//

import UIKit
import RealmSwift

class MainViewController: UIViewController {

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
