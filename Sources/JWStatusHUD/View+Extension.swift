//
//  View+Extension.swift
//  
//
//  Created by Jay on 2020/12/16.
//

import SwiftUI

public extension View {
    
    func statusHUD(item: Binding<JWStatusHUDItem?>) -> some View {
        if let dismissTimeInterval = item.wrappedValue?.dismissAfter {
            Timer.scheduledTimer(withTimeInterval: dismissTimeInterval, repeats: false) { (_) in
                item.wrappedValue?.completion?()
                item.wrappedValue = nil
            }
        }
        
        return ZStack {
            self
                .disabled(item.wrappedValue != nil)
                .blur(radius: item.wrappedValue != nil ? 3 : 0)
            
            if let item = item.wrappedValue {
                JWStatusHUD(item: item)
            }
        }
    }
    
}
