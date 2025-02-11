//
//  ContentView.swift
//  Lab1_Kevin_Lapointe
//
//  Created by Kevin Lapointe on 2025-02-08.
//

import SwiftUI

func isPrime(_ n: Int) -> Bool {
    guard n > 1 else {return false}
    for i in 2...Int(Double(n).squareRoot()){
        if n % i == 0{
            return false
        }
    }
    return true
}

struct ContentView: View {
    @State private var randomNum = 0
    
    
    var body: some View {
        VStack{
            let isPrime = randomNum % 2 == 0
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
                    if(isPrime){
                        
                    }
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
