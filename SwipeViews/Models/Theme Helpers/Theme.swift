//
//  Theme.swift
//  SwipeViews
//
//  Created by Roberto Guzman on 2/1/18.
//  Copyright © 2018 Roberto Guzman. All rights reserved.
//

import UIKit

struct Theme {
    
    enum Colors {
        case whiteColor
        case tintColor
        case backgroundColor
        case darkBackgroundColor
        case sectionHeader
        case foreground
        case lightTextColor
        case generalPrimaryOrange
        case generalAccentBlue
        case generalAlternative
        case generalAlternative2
        case textPrimary
        case textPrimaryLight
        case textSecondary
        case textHint
        case navBarOffWhite
        case lightBlueGray
        case almostBlack
        
        var color: UIColor {
            switch self {
            case .whiteColor: return UIColor(red:255/255, green:255/255, blue:255/255, alpha:1)
            case .tintColor: return UIColor(red:0.97, green:0.9, blue:0, alpha:1)
            case .backgroundColor: return UIColor(hue:0.67, saturation:0.37, brightness:0.35, alpha:1)
            case .darkBackgroundColor: return UIColor(red:0.11, green:0.1, blue:0.22, alpha:1)
            case .sectionHeader: return UIColor(hue:0.67, saturation:0.4, brightness:0.25, alpha:1)
            case .foreground: return UIColor(red:0.26, green:0.25, blue:0.37, alpha:1)
            case .lightTextColor: return UIColor(red:0.64, green:0.65, blue:0.8, alpha:1)
            case .generalPrimaryOrange: return UIColor(red: 255/255, green: 0/255, blue: 0, alpha: 1.0)
            case .generalAccentBlue: return UIColor(red: 84/255, green: 141/255, blue: 212/255, alpha: 1.0)
            case .generalAlternative: return UIColor(red: 176/255, green: 190/255, blue: 197/255, alpha: 1.0)
            case .generalAlternative2: return UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
            case .textPrimary: return UIColor(red: 033/255, green: 033/255, blue: 033/255, alpha: 1.0)
            case .textPrimaryLight: return UIColor(red: 084/255, green: 085/255, blue: 084/255, alpha: 1.0)
            case .textSecondary: return UIColor(red: 158/255, green: 158/255, blue: 158/255, alpha: 1.0)
            case .textHint: return UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
            case .navBarOffWhite: return UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0)
            case .lightBlueGray: return UIColor(red:176/255, green:190/255, blue:197/255, alpha:1)
            case .almostBlack: return UIColor(red:40/255, green:40/255, blue:40/255, alpha:1)
                
            }
        }
    }
    
    enum Fonts {
        case videoHeavyFont
        case pageTitleFont
        case userTitleDemiBoldFont
        case titleFont
        case boldTitleFont
        case boldTitleFontSmall
        case titleFontSmall
        case boldDebateFont
        case primaryTextFont
        case boldPrimaryTextFont
        case secondaryTextFont
        case countLabelFont
        case countLabelBoldFont
        case newsTableHeader
        case smallTextBoldFont
        case phoneNumberLarge
        case postTextFont
        case boldPostTextFont
        case timeLabelRegular
        case timeLabelBold
        case footerTextFont
        case footerTextFontLarge
        case buttonTitleFont
        case videoTitleFont
        case videoPlaybackSmallFont
        case videoPlaybackSmallBoldFont
        
        var font: UIFont {
            switch self {
            case .videoHeavyFont: return UIFont(name: "AvenirNext-Heavy", size: 18)!
            case .pageTitleFont: return UIFont(name: "AvenirNext-Bold", size: 18)!
            case .userTitleDemiBoldFont: return UIFont(name: "AvenirNext-DemiBold", size: 16)!
            case .boldTitleFont: return UIFont(name: "AvenirNext-Medium", size: 18)!
            case .boldTitleFontSmall: return UIFont(name: "AvenirNext-DemiBold", size: 14)!
            case .titleFontSmall: return UIFont(name: "AvenirNext-regular", size: 14)!
            case .titleFont: return UIFont(name: "AvenirNext-Regular", size: 16)!
            case .boldDebateFont: return UIFont(name: "AvenirNext-Bold", size: 16)!
            case .primaryTextFont: return UIFont(name: "AvenirNext-Regular", size: 16)!
            case .buttonTitleFont: return UIFont(name: "AvenirNext-Regular", size: 17)!
            case .boldPrimaryTextFont: return UIFont(name: "AvenirNext-Medium", size: 16)!
            case .secondaryTextFont: return UIFont(name: "AvenirNext-Regular", size: 14)!
            case .videoTitleFont: return UIFont(name: "AvenirNext-Regular", size: 15)!
            case .countLabelFont: return UIFont(name: "AvenirNext-Regular", size: 13)!
            case .countLabelBoldFont: return UIFont(name: "AvenirNext-Medium", size: 13)!
            case .videoPlaybackSmallFont: return UIFont(name: "AvenirNext-Regular", size: 10)!
            case .videoPlaybackSmallBoldFont: return UIFont(name: "AvenirNext-Bold", size: 10)!
            case .smallTextBoldFont: return UIFont(name: "AvenirNext-Bold", size: 13)!
            case .newsTableHeader: return UIFont(name: "AvenirNext-Bold", size: 24)!
            case .phoneNumberLarge: return UIFont(name: "AvenirNext-Bold", size: 30)!
            case .postTextFont: return UIFont(name: "AvenirNext-Regular", size: 16)!
            case .boldPostTextFont: return UIFont(name: "AvenirNext-Medium", size: 16)!
            case .timeLabelRegular: return UIFont(name: "AvenirNext-Medium", size: 14)!
            case .timeLabelBold: return UIFont(name: "AvenirNext-Medium", size: 18)!
            case .footerTextFont: return UIFont(name: "AvenirNext-Medium", size: 14)!
            case .footerTextFontLarge: return UIFont(name: "AvenirNext-Bold", size: 18)!
            }
        }
    }
}
