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
                    .environmentObject(ContentModel())
                    .tag(-1)
                
                BMIView(tabSelection: $tabSelection)
                    .environmentObject(ContentModel())
                    .tag(0)
                
                ExerciseView(tabSelection: $tabSelection)
                    .environmentObject(ContentModel())
                    .tag(1)

                    
                DrugsView(tabSelection: $tabSelection)
                    .environmentObject(ContentModel())
                    .tag(2)
                
                DietView(tabSelection: $tabSelection)
                    .environmentObject(ContentModel())
                    .tag(3)
                
                SleepView(tabSelection: $tabSelection)
                    .environmentObject(ContentModel())
                    .tag(4)
                
                CalculateView(tabSelection: $tabSelection)
                    .environmentObject(ContentModel())
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
