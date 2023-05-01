//
//  FrameworkListTileIView.swift
//  Apple Frameworks 2
//
//  Created by Aasem Hany on 01/05/2023.
//

import SwiftUI

struct FrameworkListTileView: View {
    let framework:Framework
    var body: some View{
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 80,height: 80)
            
            Text(framework.name)
                .font(.title)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }
        .padding()
    }
}

struct FrameworkListTileIView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListTileView(framework: MockData.previewSample)
    }
}
