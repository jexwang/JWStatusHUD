//
//  JWStatusHUD.swift
//
//
//  Created by Jay on 2020/12/16.
//

import SwiftUI

struct JWStatusHUD: View {
    let item: JWStatusHUDItem
    
    var body: some View {
        Group {
            switch item.type {
            case .loading:
                if let message = item.message {
                    ProgressView(message)
                } else {
                    ProgressView()
                }
            case .success:
                getStatusView(imageName: "checkmark", message: item.message)
            case .failure:
                getStatusView(imageName: "xmark", message: item.message)
            }
        }
        .padding()
        .background(Color.secondary.colorInvert())
        .foregroundColor(.primary)
        .cornerRadius(16)
    }
}

// MARK: - Private functions
private extension JWStatusHUD {
    
    func getStatusView(imageName: String, message: String?) -> some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .font(.largeTitle)
            
            if let message = message {
                Text(message)
            }
        }
    }
    
}

struct LoadingView_Previews: PreviewProvider {
    static let item: JWStatusHUDItem = JWStatusHUDItem(type: .loading, message: "Loading")
    
    static var previews: some View {
        JWStatusHUD(item: item)
    }
}
