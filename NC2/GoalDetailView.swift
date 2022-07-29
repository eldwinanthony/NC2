//
//  GoalDetailView.swift
//  NC2
//
//  Created by Eldwin Anthony on 27/07/22.
//

import SwiftUI

struct GoalDetailView: View {
    var goal: ListItem = goals[0]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView{
                
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
                        
                    } //HStack

                }
            
            .navigationTitle("\(goal.goalname)")
            
        
        
    }
}

struct GoalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GoalDetailView()
    }
}
