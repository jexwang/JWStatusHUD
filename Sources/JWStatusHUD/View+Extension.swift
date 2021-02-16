//
//  View+Extension.swift
//  
//
//  Created by Jay on 2020/12/16.
//

import SwiftUI

public extension View {
    
    func statusHUD(item: Binding<JWStatusHUDItem?>) -> some View {
        if let unwrappedItem = item.wrappedValue {
            let statusHUD = JWStatusHUD(item: unwrappedItem)
            UIWindow.instanceForStatusHUD = UIWindow(view: AnyView(statusHUD))
            
            if let dismissTimeInterval = unwrappedItem.dismissAfter {
                Timer.scheduledTimer(withTimeInterval: dismissTimeInterval, repeats: false) { (_) in
                    item.wrappedValue?.completion?()
                    item.wrappedValue = nil
                }
            }
        } else {
            UIWindow.instanceForStatusHUD = nil
        }
        
        return self
            .disabled(item.wrappedValue != nil)
            .blur(radius: item.wrappedValue != nil ? 3 : 0)
    }
    
}
