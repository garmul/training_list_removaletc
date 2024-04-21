//
//  ContentView.swift
//  training_list_removaletc
//
//  Created by gary on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var row  = [
        "This is Line one",
        "This is Line Two",
        "This is Line Three",
        "This is Line Four"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach ( row , id :\.self){ line in
                    
                    Text(line)
                      
                }.onDelete(perform: { indexSet in
                    row.remove(atOffsets: indexSet)
                    print(row.count)
                })
            }.navigationTitle("Lines")
             .navigationBarTitleDisplayMode(.automatic)
             .toolbar {
                 ToolbarItem {
                     Button(action: {
                         self.row.append("This has just been added (\(row.count + 1))")
                     }, label: {
                         Image(systemName: "plus")
                     })
                 }
             }
        }
    }
}





#Preview {
    ContentView()
}
