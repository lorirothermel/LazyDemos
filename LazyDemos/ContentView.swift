//
//  ContentView.swift
//  LazyDemos
//
//  Created by Lori Rothermel on 9/5/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach (0..<1000) { i in
                    let _ = print("Dang \(i)")
                    RedAndCyanView()
                }  // ForEach
            }  // VStack
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


