//
//  ContentView.swift
//  Lab1_Kevin_Lapointe
//
//  Created by Kevin Lapointe on 2025-02-08.
//

import SwiftUI


struct ContentView: View {
    @State private var randomNum = 0
    var body: some View {
        VStack{
            Text("\(randomNum)")
                .onAppear{
                    Timer.scheduledTimer(withTimeInterval: 6.0, repeats: true){
                        _ in randomNum = Int.random(in: 0...100)
                    }
                }
                .font(.largeTitle)
                .padding(.bottom, 200)
            HStack{
                Button(action:{
                    
                }){
                    Text("Prime")
                        .font(.title)
                        .italic()
                }
                .buttonStyle(.bordered)
                
                Spacer()
                    .frame(width:50)
                
                Button(action:{
                    
                }){
                    Text("Not Prime")
                        .font(.title)
                        .italic()
                }
                .buttonStyle(.bordered)
            }
        }
    }
}

#Preview {
    ContentView()
}
