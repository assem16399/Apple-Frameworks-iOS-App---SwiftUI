//
//  SafariView.swift
//  Apple Frameworks 2
//
//  Created by Aasem Hany on 30/04/2023.
//

import SwiftUI
import SafariServices

struct SafariView:UIViewControllerRepresentable {
    
    let url:String
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> some SFSafariViewController {
        SFSafariViewController(url: URL(string: url) ?? URL(string: "developer.apple.com")!)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<SafariView>) {}
}
 
