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
    @State private var score = 0
    @State private var isCorrect: isCorrect?
    
    enum isCorrect{
        case correct, incorrect
    }
    
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
                
                Button(action:{ checkAnswer(isPrime:true)
            
                }){
                    Text("Prime")
                        .font(.title)
                        .background(Color.green)
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
