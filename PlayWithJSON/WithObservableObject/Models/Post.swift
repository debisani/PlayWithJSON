//
//  Post.swift
//  PlayWithJSON
//
//  Created by debi sani on 24/06/20.
//  Copyright © 2020 debi sani. All rights reserved.
//

import Foundation

struct Post: Codable, Identifiable {
    public var id: Int
    public var title: String
    public var completed: Bool
}


