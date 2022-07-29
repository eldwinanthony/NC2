//
//  HomeView.swift
//  NC2
//
//  Created by Eldwin Anthony on 26/07/22.
//

import Foundation
import SwiftUI

struct HomeView: View{
    var body: some View{
        NavigationView{
            ZStack (alignment: .bottom){
                List(goals) { goal in
                    NavigationLink(destination: GoalDetailView(goal: goal)){
                    HStack {
                        ZStack {
                            Image(goal.categoryimage)
                                .resizable()
                                .frame(width: 60, height: 60)
                            .padding()
                            .background(Color.cyan.opacity(0.2))
                            .clipShape(Circle())
                            
                        }
                        VStack(alignment: .leading, spacing: 8){
                            Text("\(goal.goalname)")
                                .font(.system(size: 16, weight: .semibold))
                            
                            Text("\(goal.goalcategory)")
                                .font(.system(size: 14, weight: .regular))
                        }
                        
                    }
                }
                        
                }
                HStack {
                    Spacer()
                    Button(action: {
                            //Place your action here
                        }) {
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .padding(20)
                        }
                        .background(.cyan)
                        .foregroundColor(.white)
                        .cornerRadius(.infinity)
                        .padding()
                }
            }
            
            .navigationTitle("Your Goals")
        }
    }
}

var goals = [
    ListItem(goalname: "Proficient in SwiftUI", goalcategory: "Technical", categoryimage: "technicalcategory"),
    ListItem(goalname: "Proficient in Sketch", goalcategory: "Design", categoryimage: "designcategory"),
    ListItem(goalname: "Mastering Coredata", goalcategory: "Technical", categoryimage: "technicalcategory"),
    ListItem(goalname: "Proficient in Coreanimation", goalcategory: "Technical", categoryimage: "technicalcategory"),
    ListItem(goalname: "Proficient in UIUX", goalcategory: "Design", categoryimage: "designcategory"),

]
