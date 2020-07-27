//
//  Date+Format.swift
//  LatestNews
//
//  Created by avanees on 26/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import Foundation

enum CodableDateFormat: String {
    case newsApiDateAndTimeFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    case readableDateAndTimeFormat = "dd MMM yyyy HH:mm"
    
    var format: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = self.rawValue
        return dateFormatter
    }
    
    func string(from date: Date) -> String {
        return self.format.string(from: date)
    }
    
    func date(from str: String) -> Date? {
        return self.format.date(from: str)
    }
}

extension Date {
    func toString(format: CodableDateFormat) -> String {
        return format.format.string(from: self)
    }
}

extension String {
    func toDate(format: CodableDateFormat) -> Date? {
        return format.format.date(from: self)
    }
}
