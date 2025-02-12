//
//  ContentView.swift
//  Lab1_Kevin_Lapointe
//
//  Created by Kevin Lapointe on 2025-02-08.
//

import SwiftUI



struct ContentView: View {
    @State private var randomNum = 0
    @State private var score = 0
    @State private var correctCount = 0
    @State private var incorrectCount = 0
    @State private var attempts = 0
    @State private var remainingTime = 5
    @State private var message = ""
    @State private var showResults = false
    @State private var timer: Timer?
    
    
    
    var body: some View {
        VStack{
            Text("\(randomNum)")
                .font(.largeTitle)
                .padding(.bottom, 200)
            HStack{
                Button(action:{ checkAnswer(isNumPrime:true)}){
                    Text("Prime")
                        .font(.title)
                        .background(Color.green)
                        .italic()
                }
                Spacer()
                    .frame(width:50)
                Button(action:{checkAnswer(isNumPrime:false)}){
                    Text("Not Prime")
                        .font(.title)
                        .background(Color.green)
                        .italic()
                }
            }
            
            Text("Time Remaining: \(remainingTime)")
                .font(.title)
                .padding()
            if attempts > 0{
                Text("Correct: \(correctCount), Wrong: \(incorrectCount)")
            }
        }
        .onAppear(perform: startGame)
        .alert(isPresented: $showResults){
            Alert(title: Text("Results"),
                  message: Text(message),
                  dismissButton: .default(Text("OK")){
                reset()
            })
        }
    }
    
    
    
    private func checkAnswer(isNumPrime:Bool){
        let isPrime = isPrime(randomNum)
        if isPrime == isNumPrime{
            correctCount += 1
        }else{
            incorrectCount += 1
        }
        attempts += 1
        remainingTime = 5
        displayNum()
        
        if attempts % 10 == 0 {
            message = "Correct: \(correctCount), Wrong: \(incorrectCount)"
            showResults = true
        }
    }
    
    private func displayNum(){
        randomNum = Int.random(in:1...1000)
    }
    
    private func isPrime(_ n: Int) -> Bool {
        guard n > 1 else {return false}
        for i in 2...Int(Double(n).squareRoot()){
            if n % i == 0{
                return false
            }
        }
        return true
    }
}
    
    
    #Preview {
        ContentView()
    }



    


