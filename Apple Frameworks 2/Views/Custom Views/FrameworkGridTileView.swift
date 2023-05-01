//
//  FrameworkTileView.swift
//  Apple Frameworks 2
//
//  Created by Aasem Hany on 01/05/2023.
//

import SwiftUI

struct FrameworkGridTileView:View {
    let framework:Framework
    var body: some View{
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 100,height: 100)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameworkTileView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridTileView(framework: MockData.previewSample)
    }
}
