//
//  FrameworkDetailView.swift
//  Apple Frameworks 2
//
//  Created by Aasem Hany on 30/04/2023.
//

import SwiftUI

struct FrameworkDetailScreen: View {
    let framework:Framework
    @Binding var isDetailSheetDisplayed:Bool
    @State private var isSafariSheetDisplayed = false
    let isDisplayedAsList:Bool
    var body: some View {
        VStack{
            if !isDisplayedAsList
            {
                XDismissButton(isSheetDisplayed: $isDetailSheetDisplayed)
                Spacer()
            }

            FrameworkGridTileView(framework: framework)
            
            Text(framework.description)
            
            Spacer()
            
            Button{
                isSafariSheetDisplayed = true
            }label: {
                //DefaultButton(title: "Learn More" )
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            //.foregroundColor(.white)
            //.buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.red)
        }
        .padding()
        .fullScreenCover(isPresented: $isSafariSheetDisplayed){
            SafariView(url: framework.urlString)
        }
        
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailScreen(framework: MockData.previewSample,isDetailSheetDisplayed: .constant(true),isDisplayedAsList: true)
            .preferredColorScheme(.dark)
    }
}


