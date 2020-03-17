//
//  TimeStamp.swift
//  jobics-tracker
//
//  Created by Dmitrii Trifonov on 16.03.2020.
//  Copyright © 2020 Dmitrii Trifonov. All rights reserved.
//

import Foundation
import RealmSwift

class TimeStamp: Object {
    @objc dynamic var date = Date()
    @objc dynamic var tag = ""
    @objc dynamic var job = ""
}
