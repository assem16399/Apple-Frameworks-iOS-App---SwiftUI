//
//  XDismissButton.swift
//  Apple Frameworks 2
//
//  Created by Aasem Hany on 01/05/2023.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isSheetDisplayed:Bool
    var body: some View {
        HStack{
            Spacer()
            
            Button{
                isSheetDisplayed = false
            }label: {
                Image(systemName: "xmark")
                    .imageScale(.large)
                    .foregroundColor(Color(.label) )
            }
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isSheetDisplayed: .constant(true))
    }
}
