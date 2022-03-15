//
//  ExerciseView.swift
//  LifespanPrediction WatchKit Extension
//
//  Created by Haotian Huang on 12/3/22.
//

import SwiftUI

struct ExerciseView: View {
    
    @EnvironmentObject var model: ContentModel
    @Binding var tabSelection: Int
    @State private var exerciseTime: Int = 0

    
    var body: some View {
        
        VStack {
            
            Picker("🏊🏻🏃‍♀️🚴🏿 /day", selection: $exerciseTime){
                ForEach(0...60, id: \.self) { i in
                    Text("\(i) minutes").tag(i)
                    
                }
            }.pickerStyle(WheelPickerStyle())
            
            Button{
                model.SetExercise(exercise: exerciseTime)
                self.tabSelection = 2
            } label:{
                Text("Confirm")
            }
        }
    }
}

//                Button{
//
//                    model.SetExercise(exercise: 0)
//
//                } label: {
//                    Text("0 min")
//                }
//
//
//                Button{
//
//                    model.SetExercise(exercise: 10)
//
//                } label: {
//                    Text("10 min")
//                }
//
//                Button{
//
//                    model.SetExercise(exercise: 20)
//
//                } label: {
//                    Text("20 min")
//                }
//
//                Button{
//
//                    model.SetExercise(exercise: 30)
//
//                } label: {
//                    ZStack{
//                        Text("30 min")
//                    }
//                }
//
//                Button{
//
//                    model.SetExercise(exercise: 40)
//
//                } label: {
//                    Text("40 min")
//                }
//
//                Button{
//
//                    model.SetExercise(exercise: 50)
//
//                } label: {
//                    Text("50 min")
//                }
//
//                Button{
//
//                    model.SetExercise(exercise: 60)
//
//                } label: {
//                    Text("60 min")
//                }
