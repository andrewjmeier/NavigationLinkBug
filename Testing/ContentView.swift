//
//  ContentView.swift
//  Testing
//
//  Created by Andrew Meier on 2/11/21.
//

import SwiftUI

struct ContentView: View {
    
    var items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    @State var selectedItem: Int?
    
    var body: some View {
        NavigationView {
            List(items, id: \.self) { item in
                
                NavigationLink(destination: Text("\(item)"), tag: item, selection: $selectedItem) {
                    Text("HERE: \(item)")
                }.isDetailLink(false)
                
            }
        }
        .onOpenURL(perform: { url in
            let char = url.absoluteString.last!
            print(char)
            self.selectedItem = Int(String(char))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
