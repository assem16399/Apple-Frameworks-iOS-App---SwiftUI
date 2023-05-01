//
//  FrameworksGridView.swift
//  Apple Frameworks 2
//
//  Created by Aasem Hany on 01/05/2023.
//

import SwiftUI

struct FrameworksGridView: View {
    @EnvironmentObject var frameworkViewModel:FrameworksViewModel
    let gridColumns:[GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: gridColumns){
                
                ForEach(MockData.frameworks){(framework)in
                    
                    FrameworkGridTileView(framework: framework)
                        .onTapGesture {
                            frameworkViewModel.selectedFramework = framework
                        }
                    
                }
                
            }
            
        }.navigationTitle("🍎 Frameworks")
    }
}

struct FrameworksGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksGridView()
            .environmentObject(FrameworksViewModel())
            .preferredColorScheme(.dark)
    }
}
