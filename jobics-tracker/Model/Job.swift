//
//  Job.swift
//  jobics-tracker
//
//  Created by Dmitrii Trifonov on 30.03.2020.
//  Copyright © 2020 Dmitrii Trifonov. All rights reserved.
//

import Foundation

struct Job {
    let uuid = UUID().uuidString
    var name: String
    
    init(with name: String) {
        self.name = name
    }
    
    mutating func changeName(to: String) {
        self.name = to
    }
}
