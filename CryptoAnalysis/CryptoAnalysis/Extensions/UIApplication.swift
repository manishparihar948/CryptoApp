//
//  UIApplication.swift
//  CryptoAnalysis
//
//  Created by Manish Parihar on 20.07.23.
//

import Foundation

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
