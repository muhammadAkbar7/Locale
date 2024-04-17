//
//  user.swift
//  locale-app
//
//  Created by Muhammad Akbar on 4/16/24.
//

import Foundation
import UIKit

struct user: Codable {
    
    //
    var user: String
    
    var userPass: String
    
    init(user: String, userPass: String) {
        self.user = user
        self.userPass = userPass
    }
    
    
}
