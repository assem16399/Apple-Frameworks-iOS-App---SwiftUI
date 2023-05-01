//
//  DefaultButton.swift
//  Apple Frameworks 2
//
//  Created by Aasem Hany on 30/04/2023.
//

import SwiftUI

struct DefaultButton: View {
    let title:String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280,height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}


struct DefaultButton_Previews: PreviewProvider {
    
    static var previews: some View {
        DefaultButton(title: "Test Title")
    }
}
