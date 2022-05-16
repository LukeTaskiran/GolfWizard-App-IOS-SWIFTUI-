//
//  ContentView.swift
//  GolfApp
//
//  Created by Luke Taskiran on 2022-05-02.
//

import SwiftUI

struct ContentView: View {
    
   
    var body: some View {
        
        TabView {
            SecondView().minimumScaleFactor(0.75)
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }.navigationViewStyle(StackNavigationViewStyle())
        
            TabView{
                VStack{
                    Home().offset(y:30).background(Color.black)
                    
                }
            }
            .tabItem {
                Image(systemName: "hand.raised.fill")
                Text("Play On")
            }
            
            NavigationView {
                ThirdView().offset(y:-20).background(Color.black)
            }
            .tabItem {
                Image(systemName: "person.fill.questionmark")
                Text("About")
            }.navigationViewStyle(StackNavigationViewStyle())
            
            
        }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
