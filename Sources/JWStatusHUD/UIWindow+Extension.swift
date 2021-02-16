//
//  File.swift
//  
//
//  Created by 王冠綸 on 2021/2/16.
//

import SwiftUI

extension UIWindow {
    
    static var instanceForStatusHUD: UIWindow?
    
    convenience init(view: AnyView) {
        if let scene = UIApplication.shared.connectedScenes.filter({ $0.activationState == .foregroundActive }).first as? UIWindowScene {
            self.init(windowScene: scene)
        } else {
            self.init(frame: UIScreen.main.bounds)
        }
        
        windowLevel = .alert - 1
        
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.backgroundColor = UIColor(white: 0, alpha: 0.6)
        rootViewController = hostingController
        
        makeKeyAndVisible()
    }
    
}
