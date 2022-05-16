//
//  YouView.swift
//  GolfApp
//
//  Created by Luke Taskiran on 2022-05-12.
//

import SwiftUI
import AVKit
struct YouView: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        NavigationView{
        ScrollView{
            VStack{
                Text("Simple & Needed Tutorials")
                    .font(Font.custom("Arial", size: 25.0))
                    .bold()
                    .padding(.bottom,5)
                    .foregroundColor(Color.white)
                    .minimumScaleFactor(0.75)
        Video1HorScroll()
                /*  Text("Driver Tutorials")
                    .font(Font.custom("Arial", size: 25.0))
                    .bold()
                    .padding(.bottom,5)
                    .foregroundColor(Color.white)
                    .minimumScaleFactor(0.75)
        DriverHorScroll()
             Text("Iron/Woods Tutorials")
                    .font(Font.custom("Arial", size: 25.0))
                    .bold()
                    .padding(.bottom,5)
                    .foregroundColor(Color.white)
                    .minimumScaleFactor(0.75)
       IronHorScroll()
              
                Text("Putting/Chipping Tutorials")
                    .font(Font.custom("Arial", size: 25.0))
                    .bold()
                    .padding(.bottom,5)
                    .foregroundColor(Color.white)
                    .minimumScaleFactor(0.75)
        
         PuttingHorScroll()
                */
                
            }
        }.frame(maxHeight: .infinity)
            .background(Color.black)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                       goHome3()
                    } label: {
                        Image(systemName: "arrow.backward.square.fill")
                            .scaleEffect(1.5).padding()
                            
                    }
                }
            }
    }.navigationViewStyle(StackNavigationViewStyle())
    }
func goHome3() {
    if let window = UIApplication.shared.windows.first {
        window.rootViewController = UIHostingController(rootView: ContentView())
        
        window.makeKeyAndVisible()
    }
}
}
struct Video1HorScroll: View{
    @Environment(\.openURL) var openURL
    @State var animate = false
    let videoUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "simple1", ofType: "mp4")!)
    let videoUrl2 = URL(fileURLWithPath: Bundle.main.path(forResource: "simple2", ofType: "mp4")!)
    let videoUrl3 = URL(fileURLWithPath: Bundle.main.path(forResource: "simple3", ofType: "mp4")!)

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                
                    VStack{
                        VideoPlayer(player: AVPlayer(url:  videoUrl))
                            .frame(width: 300, height: 300)
                        Text("Video Tip #1")
                            .font(Font.custom("Arial", size: 20.0))
                            .bold()
                            .padding(.bottom,10)
                            .foregroundColor(Color.white)
                            .minimumScaleFactor(0.75)
                    }
                        .clipped().cornerRadius(30)
                        .border(Color.white, width: 5)
                     
                        
                    VStack{
                        VideoPlayer(player: AVPlayer(url:  videoUrl2))
                            .frame(width: 300, height: 300)
                        Text("Video Tip #2")
                            .font(Font.custom("Arial", size: 20.0))
                            .bold()
                            .padding(.bottom,10)
                            .foregroundColor(Color.white)
                            .minimumScaleFactor(0.75)
                    }
                        .clipped().cornerRadius(30)
                        .border(Color.white, width: 5)
                    
                    VStack{
                        VideoPlayer(player: AVPlayer(url:  videoUrl3))
                            .frame(width: 300, height: 300)
                        Text("Video Tip #3")
                            .font(Font.custom("Arial", size: 20.0))
                            .bold()
                            .padding(.bottom,10)
                            .foregroundColor(Color.white)
                            .minimumScaleFactor(0.75)
                    }
                        .clipped().cornerRadius(30)
                        .border(Color.white, width: 5)
                    
                
                
            }
            .padding()
        }
    }
}
struct Driver1HorScroll: View{
    @Environment(\.openURL) var openURL
    @State var animate = false
    let videoUrl4 = URL(fileURLWithPath: Bundle.main.path(forResource: "driver1", ofType: "mp4")!)
    let videoUrl5 = URL(fileURLWithPath: Bundle.main.path(forResource: "driver2", ofType: "mp4")!)
    let videoUrl6 = URL(fileURLWithPath: Bundle.main.path(forResource: "driver3", ofType: "mp4")!)
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                
                    VStack{
                        VideoPlayer(player: AVPlayer(url:  videoUrl4))
                            .frame(width: 300, height: 300)
                        Text("Video Tip #1")
                            .font(Font.custom("Arial", size: 20.0))
                            .bold()
                            .padding(.bottom,10)
                            .foregroundColor(Color.white)
                            .minimumScaleFactor(0.75)
                    }
                        .clipped().cornerRadius(30)
                        .border(Color.white, width: 5)
                     
                        
                    VStack{
                        VideoPlayer(player: AVPlayer(url:  videoUrl5))
                            .frame(width: 300, height: 300)
                        Text("Video Tip #2")
                            .font(Font.custom("Arial", size: 20.0))
                            .bold()
                            .padding(.bottom,10)
                            .foregroundColor(Color.white)
                            .minimumScaleFactor(0.75)
                    }
                        .clipped().cornerRadius(30)
                        .border(Color.white, width: 5)
                    
                    VStack{
                        VideoPlayer(player: AVPlayer(url:  videoUrl6))
                            .frame(width: 300, height: 300)
                        Text("Video Tip #3")
                            .font(Font.custom("Arial", size: 20.0))
                            .bold()
                            .padding(.bottom,10)
                            .foregroundColor(Color.white)
                            .minimumScaleFactor(0.75)
                    }
                        .clipped().cornerRadius(30)
                        .border(Color.white, width: 5)
                   
                    
                   
                
                
            }
            .padding()
        }
    }
}
struct YouView_Previews: PreviewProvider {
    static var previews: some View {
        YouView()
    }
}
