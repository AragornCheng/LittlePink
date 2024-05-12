//
//  Extensions.swift
//  LittlePink
//
//  Created by Aragorn Cheng on 2024/5/12.
//

import Foundation

extension Bundle {
    var appName: String {
        if let appName = localizedInfoDictionary?["CFBundleDisplayName"] as? String {
            return appName
        } else {
            return infoDictionary!["CFBundleDisplayName"] as! String
        }
    }
}
