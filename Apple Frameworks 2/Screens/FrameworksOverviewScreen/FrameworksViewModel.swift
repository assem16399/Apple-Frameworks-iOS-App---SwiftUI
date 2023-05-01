//
//  FrameworkViewModel.swift
//  Apple Frameworks 2
//
//  Created by Aasem Hany on 30/04/2023.
//

import SwiftUI

final class FrameworksViewModel: ObservableObject {
    var selectedFramework:Framework?{
        didSet{ isDetailModalDisplayed = true }
    }
    
    @Published var isDetailModalDisplayed = false
     
}


