//
//  ContentView.swift
//  Assessment
//
//  Created by Visal Rajapakse on 2023-03-13.
//

import SwiftUI

/// Add `enum` cases with `rawValues`  below.
/// Conform `Operator` to `CaseIterable`

enum Operator: String, CaseIterable {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

struct GameView: View {
    
    @Binding var selectedColor: Color
    @Binding var selectedFontSize: Double
    
    // Declare your Variables here
    @State private var userAns: String = ""
    @AppStorage("Points") private var points: Int = 0
    @State private var question: String = ""
    @State private var asnwerForTheQuestion: Int = 0
    @State private var isUserAnsCorrect: Bool = false
    @State private var correctAnsLabelDisplayStatus: Bool = false
    @State private var disbaleSubmitButton: Bool = false
    
    var body: some View {
        // GameView content
        ScrollView {
            VStack(spacing: 20) {
                Text("Guess the answer!")
                    .foregroundColor(selectedColor)
                    .font(.largeTitle)
                    .bold()
                
                Text("What is \(question)?")
                    .font(.title)
                    .bold()
                
                HStack {
                    TextField("Answer", text: $userAns)
                        .textFieldStyle(RoundedTextFieldStyle())
                    
                    Button("Submit") {
                        checkAnswer()
                        correctAnsLabelDisplayStatus = true
                        disbaleSubmitButton = true
                    }
                    .buttonStyle(.bordered)
                    .tint(.blue)
                    .disabled(disbaleSubmitButton)
                }
                
                if correctAnsLabelDisplayStatus {
                    if isUserAnsCorrect {
                        Label("Correct Answer", systemImage: "checkmark.circle.fill")
                            .foregroundColor(.green)
                    } else {
                        Label("Wrong Answer. The Correct Answer is \(asnwerForTheQuestion)", systemImage: "xmark.circle.fill")
                            .foregroundColor(.red)
                    }
                }
                
                Text("\(points)")
                    .font(.system(size: 80, weight: .bold))
                
                VStack {
                    Text("Instructions")
                    
                    Text("Submit the correct answer and gain point. Submit a wrong answer or press on \"NEXT\" and you will loose 1 point")
                        .multilineTextAlignment(.center)
                }
                .font(.system(size: CGFloat(selectedFontSize)))
                
                Button("Next") {
                    generateQuestion()
                    correctAnsLabelDisplayStatus = false
                    disbaleSubmitButton = false
                    userAns.removeAll()
                }
                .buttonStyle(.bordered)
                .tint(.green)
            }
            .padding()
            .onAppear {
                generateQuestion()
            }
        }
    }
    
    private func generateOperands() -> Int {
        // Generate and return a random operand
        let range = 0...9
        return range.randomElement() ?? 0
    }
    
    private func generateOperator() -> Operator {
        // Generate and return operator with CaseIterable. See Appendix B.2
        let array = Operator.allCases
        return array.randomElement() ?? .addition
    }
    
    private func generateQuestion() {
        // Generate random question with 2 random operands and 1 operator using the above functions and show it to the user
        let numberOne = generateOperands()
        let numberTwo = generateOperands()
        let operation = generateOperator()
        
        switch operation {
        case .addition:
            question = "\(numberOne) + \(numberTwo)"
            asnwerForTheQuestion = numberOne + numberTwo
        case .subtraction:
            question = "\(numberOne) - \(numberTwo)"
            asnwerForTheQuestion = numberOne - numberTwo
        case .multiplication:
            question = "\(numberOne) X \(numberTwo)"
            asnwerForTheQuestion = numberOne * numberTwo
        default:
            if numberTwo == 0 {
                generateQuestion()
            } else {
                question = "\(numberOne) / \(numberTwo)"
                asnwerForTheQuestion = numberOne / numberTwo
            }
        }
    }
    
    private func checkAnswer() {
        // Check answer here
        guard let userAns = Int(userAns) else { return }
        if userAns == asnwerForTheQuestion {
            addPoint()
        } else {
            deductPoint()
        }
    }
    
    private func addPoint() {
        // Increment points here
        points += 1
        isUserAnsCorrect = true
    }
    
    private func deductPoint() {
        // Decrease points here
        if points > 0 {
            points -= 1
        }
        isUserAnsCorrect = false
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(selectedColor: .constant(Color(.red)),
                 selectedFontSize: .constant(14.0))
    }
}
