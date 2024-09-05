//
//  ContentView.swift
//  LazyDemos
//
//  Created by Lori Rothermel on 9/5/24.
//

import SwiftUI


struct ContentView: View {
    @State private var columns = [
//        GridItem(.fixed(110)),
//        GridItem(.fixed(110)),
//        GridItem(.fixed(110))
//        GridItem(),
//        GridItem(),
//        GridItem()
        GridItem(.flexible(maximum: 110)),
        GridItem(.flexible(maximum: 200))
        
        
        
    ]
    
    
    var body: some View {
        ScrollView(.horizontal) {
            
            LazyHGrid(rows: columns) {
                ForEach (0..<1000) { i in
                    RedAndCyanView()
                }  // ForEach
                
            }  // LazyHGrid
        }  // ScrollView
        .padding()
        
    }  // some View
}  // ContentView



struct RedAndCyanView: View {
    var body: some View {
        ZStack {
            Color.red
            Rectangle()
                .fill(.cyan)
                .frame(width: 100, height: 100)
        }  // ZStack
    }  // some View
}  // ContentView



#Preview {
    ContentView()
}


