//
//  JWStatusHUDItem.swift
//  
//
//  Created by Jay on 2020/12/16.
//

import SwiftUI

public struct JWStatusHUDItem {
    let type: JWStatusHUDType
    let message: LocalizedStringKey?
    let dismissAfter: TimeInterval?
    let completion: (() -> Void)?
    
    public init(type: JWStatusHUDType, message: LocalizedStringKey? = nil, dismissAfter: TimeInterval? = nil, completion: (() -> Void)? = nil) {
        self.type = type
        self.message = message
        self.dismissAfter = dismissAfter
        self.completion = completion
    }
}
