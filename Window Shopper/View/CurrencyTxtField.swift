//
//  CurrencyTxtField.swift
//  Window Shopper
//
//  Created by Soubhik Sarkhel on 28/11/23.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = UIColor.white.withAlphaComponent(0.2)
        textColor = .white
        layer.cornerRadius = 5
        textAlignment = .center
        
        if let placeholder = placeholder {
            let place = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor.white])
            
            attributedPlaceholder = place
        }
    }
}
