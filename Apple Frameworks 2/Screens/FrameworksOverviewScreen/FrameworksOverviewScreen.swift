//
//  ContentView.swift
//  Apple Frameworks 2
//
//  Created by Aasem Hany on 29/04/2023.
//

import SwiftUI

struct FrameworksOverviewScreen: View {
    
    @StateObject var frameworkViewModel = FrameworksViewModel()
    @State private var isDisplayedAsList = false
    
    var toolbar: ToolbarItem<(), Button<some View>> {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button {
                isDisplayedAsList.toggle()
            }label: {
                Image(systemName:!isDisplayedAsList ? "list.clipboard" : "square.grid.3x3")
                    .foregroundColor(Color(.label))
            }
    }
    }
    var body: some View {
        NavigationView{
            if !isDisplayedAsList
            {
                FrameworksGridView()
                    .environmentObject(frameworkViewModel)
                    .toolbar{ toolbar }
                    .sheet(isPresented: $frameworkViewModel.isDetailModalDisplayed){
                        if let framework = frameworkViewModel.selectedFramework{
                            FrameworkDetailScreen(framework: framework,isDetailSheetDisplayed: $frameworkViewModel.isDetailModalDisplayed,isDisplayedAsList: isDisplayedAsList)
                        }
                        
                    }

            }
            else {
                FrameworksListView(isDisplayedAsList: true).environmentObject(frameworkViewModel)
                    .toolbar{ toolbar }
            }
        }
        .tint(Color(.label))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksOverviewScreen()
            .preferredColorScheme(.dark )
    }
}



