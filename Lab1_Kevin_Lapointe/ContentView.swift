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
    @State private var correctCount = 0
    @State private var incorrectCount = 0
    @State private var attempts = 0
    @State private var remainingTime = 5
    @State private var showResults = false

   
    
    var body: some View {
        VStack{
            let isPrime = randomNum % 2 == 0
            Text("\(randomNum)"){
                
                }
                .font(.largeTitle)
                .padding(.bottom, 200)
            HStack{
                
                Button(action:{ checkAnswer(isPrime:true)}){
                    Text("Prime")
                        .font(.title)
                        .background(Color.green)
                        .italic()
                }
                .buttonStyle(.bordered)
                
                Spacer()
                    .frame(width:50)
                
                Button(action:{checkAnswer(isPrime:false)}){
                    Text("Not Prime")
                        .font(.title)
                        .background(Color.green)
                        .italic()
                }
                .buttonStyle(.bordered)
            }
        }
        private func displayNum(){
            randomNum = Int.random(int:1...1000)
        }
    
        private func checkAnswer(isPrime:Bool){
            let isPrimeNumum = isPrimeNum(randomNum)
            if isPrimeNum == isPrime{
                correct += 1
            }else{
                incorrectCount += 1
            }
            attempts += 1
            remainingTime = 5
            
            if attempt % 10 == 0 {
                message = "Correct: \(correctCount), Wrong: \(wrongCount)"
                showResults = true
            }
        }
        }
    }
    

#Preview {
    ContentView()
}
