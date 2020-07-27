//
//  AppFont.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import UIKit

enum AppFont: String {
    case Bold = "Campton-Bold"
    case Medium = "Campton-Medium"
    case SemiBold = "Campton-SemiBold"
    case Normal = "Campton-Book"
    case BoldItalic = "Campton-BoldItalic"
    case ExtraBoldItalic = "Campton-ExtraBoldItalic"
    case Italic = "Campton-BookItalic"
    
    static func normal(size: CGFloat) -> UIFont {
        return UIFont(name: AppFont.Normal.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    static func medium(size: CGFloat) -> UIFont {
        return UIFont(name: AppFont.Medium.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    static func bold(size: CGFloat) -> UIFont {
        return UIFont(name: AppFont.Bold.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    static func boldItalic(size: CGFloat) -> UIFont {
        return UIFont(name: AppFont.BoldItalic.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    static func extraBoldItalic(size: CGFloat) -> UIFont {
        return UIFont(name: AppFont.ExtraBoldItalic.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    static func semiBold(size: CGFloat) -> UIFont {
        return UIFont(name: AppFont.SemiBold.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    static func italic(size: CGFloat) -> UIFont {
        return UIFont(name: AppFont.Italic.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
}

struct TextStyles {
    
    static var h1: UIFont { return AppFont.semiBold(size: 28) } //DarkGrey
    static var h2: UIFont { return AppFont.bold(size: 20) } //DarkGrey
    static var navTitle: UIFont { return AppFont.medium(size: 20) } //DarkGrey
    static var largeButton: UIFont { return AppFont.semiBold(size: 18) } //White
    static var secondaryButton: UIFont { return AppFont.normal(size: 18) }
    static var roundedButton: UIFont { return AppFont.semiBold(size: 18) }
    static var rounderButtonSmall: UIFont { return AppFont.normal(size: 16) }
    static var smallButton: UIFont { return AppFont.bold(size: 14) } //White
    static var bodyHeader: UIFont { return AppFont.semiBold(size: 16) } //DarkGrey
    static var bodyCopy: UIFont { return AppFont.normal(size: 16) } //DarkGrey
    static var largeBodyCopy: UIFont { return AppFont.normal(size: 18) } //DarkGrey
    static var smallLink: UIFont { return AppFont.normal(size: 16) } //DarkGrey
    static var searchBarText: UIFont { return AppFont.medium(size: 16) }
    static var inactiveFormField: UIFont { return AppFont.normal(size: 16) } //MediumGrey
    static var smallBodyHeader: UIFont { return AppFont.semiBold(size: 14) }
    static var smallBodyCopy: UIFont { return AppFont.normal(size: 14) }
    static var tealText: UIFont { return AppFont.extraBoldItalic(size: 12) } //Teal
    static var sectionHeader: UIFont { return AppFont.normal(size: 12) } //DarkGrey
    static var sectionHeaderActive: UIFont { return AppFont.bold(size: 12) } //DarkGrey
    static var sectionBody: UIFont { return AppFont.normal(size: 12) } //DarkGrey
    static var smallCaption: UIFont { return AppFont.normal(size: 12) } //DarkGrey
    
    static var h1Color: UIColor { return Colors.darkGrey } //DarkGrey
    static var h2Color: UIColor { return Colors.darkGrey } //DarkGrey
    static var navTitleColor: UIColor { return Colors.darkGrey } //DarkGrey
    static var largeButtonColor: UIColor { return Colors.white } //White
    static var bodyHeaderColor: UIColor { return Colors.darkGrey } //DarkGrey
    static var bodyCopyColor: UIColor { return Colors.darkGrey } //DarkGrey
    static var smallLinkColor: UIColor { return Colors.darkGrey } //DarkGrey
    static var inactiveFormFieldColor: UIColor { return Colors.mediumGrey } //MediumGrey
    static var smallBodyHeaderColor: UIColor { return Colors.darkGrey }
    static var smallBodyCopyColor: UIColor { return Colors.darkGrey }
    static var tealTextColor: UIColor { return Colors.teal } //Teal
    static var sectionHeaderColor: UIColor { return Colors.darkGrey } //DarkGrey
    static var sectionHeaderActiveColor: UIColor { return Colors.darkGrey } //DarkGrey
    static var smallCaptionColor: UIColor { return Colors.darkGrey } //DarkGrey

}
