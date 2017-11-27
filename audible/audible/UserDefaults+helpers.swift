//
//  UserDefaults+helpers.swift
//  audible
//
//  Created by Shree on 23/11/17.
//  Copyright © 2017 Shree. All rights reserved.
//

import Foundation


extension UserDefaults{
    
    enum UserDefaultsKeys: String{
        case isLoggedIn
    }
    
    func setIsLoggedIn(value: Bool)
    {
        set(value, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        synchronize()
    }
    
    func isLoggedIn() -> Bool{
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }
}
