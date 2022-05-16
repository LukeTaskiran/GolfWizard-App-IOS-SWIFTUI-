//
//  VideoView.swift
//  GolfApp
//
//  Created by Luke Taskiran on 2022-05-11.
//

import SwiftUI
import AVKit
struct VideoView: View {
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
        VideoHorScroll()
                 Text("Driver Tutorials")
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
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        openURL(URL(string: "https://www.youtube.com/results?search_query=golf+tutorial+intermediate")!)
                    } label: {
                        Image("youtube").scaledToFit().scaleEffect(0.2)
                            .frame(width: 50, height: 50, alignment: .center)
                            
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

struct VideoHorScroll: View{
    @Environment(\.openURL) var openURL
    @State var animate = false
    let videoUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "simple1", ofType: "mp4")!)

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
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "simple2", withExtension: "mp4")!)).frame(width: 300, height: 300)
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
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "simple3", withExtension: "mp4")!)).frame(width: 300, height: 300)
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
struct DriverHorScroll: View{
    @Environment(\.openURL) var openURL
    @State var animate = false
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                
                    VStack{
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "driver1", withExtension: "mp4")!)).frame(width: 300, height: 300)
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
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "driver2", withExtension: "mp4")!)).frame(width: 300, height: 300)
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
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "driver3", withExtension: "mp4")!)).frame(width: 300, height: 300)
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
struct IronHorScroll: View{
    @Environment(\.openURL) var openURL
    @State var animate = false
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
               
                    VStack{
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "iron1", withExtension: "mp4")!))
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
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "iron2", withExtension: "mp4")!))
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
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "iron3", withExtension: "mp4")!))
                            .frame(width: 300, height:300)
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
struct PuttingHorScroll: View{
    @Environment(\.openURL) var openURL
    @State var animate = false
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
               
                    VStack{
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "putt1", withExtension: "mp4")!)).frame(width: 300, height: 300)
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
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "putt2", withExtension: "mp4")!)).frame(width: 300, height: 300)
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
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "putt3", withExtension: "mp4")!)).frame(width: 300, height: 300)
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

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
