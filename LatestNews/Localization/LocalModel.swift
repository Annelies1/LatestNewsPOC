//
//  LocalModel.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import Foundation

enum Local: String {
    case content = "Content_Localizable"

    func localize(_ string: String) -> String {
        return string.localized(table: self)
    }
}

extension String {
    func localized(bundle: Bundle = .main, table: Local = Local.content) -> String {
        return NSLocalizedString(self, tableName: table.rawValue, value: "**\(self)**", comment: "")
    }
    
    func localized(bundle: Bundle = .main, table: Local = Local.content,
                   _ arguments: [CVarArg]) -> String {
        let localized = self.localized(bundle: bundle, table: table)
        let str = String(format: localized, arguments: arguments)
        return str
    }
    
    var localized: String {
        let str = self.localized()
        return str
    }
    
    func localized(_ arguments: [CVarArg]) -> String {
        let str = String(format: self.localized, arguments: arguments)
        return str
    }
}
