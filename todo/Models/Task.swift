//
//  Task.swift
//  todo
//
//  Created by 中村太一 on 2018/09/22.
//  Copyright © 2018年 中村太一. All rights reserved.
//

import UIKit

class Task: NSObject, NSCoding {
    var title: String?
    var note: String?
    var latitude: Double?
    var longitude: Double?
    
    init(title _title: String) {
        self.title = _title
    }
    
    required init(coder decoder: NSCoder) {
        self.title = decoder.decodeObject(forKey: "title") as? String ?? ""
        self.note = decoder.decodeObject(forKey: "note") as? String ?? ""
        self.latitude = decoder.decodeObject(forKey: "latitude") as? Double ?? nil
        self.longitude = decoder.decodeObject(forKey: "longitude") as? Double ?? nil
    }
    func encode(with coder: NSCoder) {
        coder.encode(title, forKey: "title")
        coder.encode(note, forKey: "note")
        coder.encode(latitude, forKey: "latitude")
        coder.encode(longitude, forKey: "longitude")
    }
    
}
