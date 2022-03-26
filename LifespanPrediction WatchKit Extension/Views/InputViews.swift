//
//  InputViews.swift
//  LifespanPrediction WatchKit Extension
//
//  Created by Haotian Huang on 15/3/22.
//

import SwiftUI

struct InputViews: View {
    
    @EnvironmentObject var model: ContentModel
    @State private var tabSelection = -1
    
    var body: some View {
        
        
        if !model.completedQuestions{
            
            TabView(selection: $tabSelection){
                
                BasicsView(tabSelection: $tabSelection)
                    .tag(-1)
                
                BMIView(tabSelection: $tabSelection)
                    .tag(0)
                
                ExerciseView(tabSelection: $tabSelection)
                    .tag(1)

                    
                DrugsView(tabSelection: $tabSelection)
                    .tag(2)
                
                DietView(tabSelection: $tabSelection)
                    .tag(3)
                
                SleepView(tabSelection: $tabSelection)
                    .tag(4)
                
                CalculateView(tabSelection: $tabSelection)
                   .tag(5)

            }

        }
        else if model.completedQuestions{
            ClockView()
        }
    }
}

struct InputViews_Previews: PreviewProvider {
    static var previews: some View {
        InputViews()
    }
}
