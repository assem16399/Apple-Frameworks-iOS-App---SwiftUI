//
//  FrameworksListView.swift
//  Apple Frameworks 2
//
//  Created by Aasem Hany on 01/05/2023.
//

import SwiftUI

struct FrameworksListView: View {
    @EnvironmentObject var frameworkViewModel:FrameworksViewModel
    
    let isDisplayedAsList:Bool
    var body: some View {
        List{
            
            ForEach(MockData.frameworks){(framework)in
                
                NavigationLink{
                    FrameworkDetailScreen(framework: framework, isDetailSheetDisplayed: $frameworkViewModel.isDetailModalDisplayed,isDisplayedAsList: isDisplayedAsList)
                }label: {
                    FrameworkListTileView(framework: framework)
                }
                
                    
            }
            
        }.navigationTitle("🍎 Frameworks")
    }
}

struct FrameworksListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksListView(isDisplayedAsList: true)
            .environmentObject(FrameworksViewModel())
            .preferredColorScheme(.dark)
    }
}
