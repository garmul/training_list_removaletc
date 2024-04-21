//
//  mainView.swift
//  training_list_removaletc
//
//  Created by gary on 4/21/24.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        TabView {
            ContentView()
                .badge(10)
                .tabItem {
                     Label("Main", systemImage: "person")
                    
                }
            
            Product()
                .badge(0)
                .tabItem {
                     Label("Product", systemImage: "person")
                    
                }
            
            History()
                .badge(0)
                .tabItem {
                     Label("History", systemImage: "person")
                    
                }
                
        }
    }
}

#Preview {
    mainView()
}
