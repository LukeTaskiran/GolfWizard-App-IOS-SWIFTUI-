//
//  SongsView.swift
//  GolfApp
//
//  Created by Luke Taskiran on 2022-05-04.
//

import SwiftUI
import WebKit
struct SongsView: View {
    var body: some View {
       
        NavigationView{
            VStack{
                Color.black.edgesIgnoringSafeArea(.all)
                Text("Warm Up Songs")
                    .font(Font.custom("Arial", size: 30.0))
                    .bold()
                    .foregroundColor(Color.white)
                    .minimumScaleFactor(0.75)
                ImageHorScroll()
                Text("Swing Tempo Songs")
                    .font(Font.custom("Arial", size: 30.0))
                    .bold()
                    .foregroundColor(Color.white)
                    .minimumScaleFactor(0.75)
                ImageHorScroll1()
                   // BannerAd().frame(width: .infinity, height: 100, alignment: .center)
            }.background(Color.black)
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button {
                           goHome4()
                        } label: {
                            Image(systemName: "arrow.backward.square.fill")
                                .scaleEffect(1.5).padding()
                                
                        }
                    }
                }
            
        }.navigationViewStyle(StackNavigationViewStyle())
            
        
        
    }
    func goHome4() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: ContentView())
            
            window.makeKeyAndVisible()
        }
    }

}
struct ImageHorScroll: View{
    @Environment(\.openURL) var openURL
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(0 ..< 6) { item in
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=5y_KJAg8bHI")!)
                        }
                    } label: {
                        VStack{
                    Image("image1").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("Wake Me Up, Avicii")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                    }
                    
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=vrgaB9xu7GM")!)
                        }
                    } label: {
                        VStack{
                    Image("image2").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("Radioactive, Imagine Dragons")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                    }
                    
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=t5rBx86Noa0")!)
                        }
                    } label: {
                        VStack{
                    Image("image3").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("Mockingbird, Eminem")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                    }
                    
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=2kpAzC2Mja8")!)
                        }
                    } label: {
                        VStack{
                    Image("image4").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("Animals, Martin Garrixx")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                    }
                    
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=HwokFeat9ho")!)
                        }
                    } label: {
                        VStack{
                    Image("image5 ").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("The Language, Drake")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                    }
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=n_58FqEiG3I")!)
                        }
                    } label: {
                        VStack{
                    Image("image6").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("The Man, Aloe Blacc")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                        
                    
                    }
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=abikR72NyhI")!)
                        }
                    } label: {
                        VStack{
                    Image("image7").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("Sweet Nothing, Calvin Harris")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                    }
                    
                
                }
                
            }
            .padding()
        }
    }
}
struct ImageHorScroll1: View{
    @Environment(\.openURL) var openURL
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(0 ..< 6) { item in
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=BciS5krYL80")!)
                        }
                    } label: {
                        VStack{
                    Image("pic1").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("Hotel California by The Eagles")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                    }
                    
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=uwiTs60VoTM")!)
                        }
                    } label: {
                        VStack{
                    Image("pic2").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("When the Levee Breaks by Led Zeppelin")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                    }
                    
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=axAtWjn3MfI")!)
                        }
                    } label: {
                        VStack{
                    Image("pic3").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("Bohemian Rhapsody by Queen")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                    }
                    
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=pxuYPE84u_E")!)
                        }
                    } label: {
                        VStack{
                    Image("pic4").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("Back in Black (AC/DC)")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                    }
                    
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                            openURL(URL(string: "https://www.youtube.com/watch?v=1EQzCoF7uA8")!)
                        }
                    } label: {
                        VStack{
                    Image("pic5").frame(width: 200, height: 200)
                        .clipped().cornerRadius(30)
                            Text("Awake My Soul (Mumford & Sons)")
                                .font(Font.custom("Arial", size: 15.0))
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .minimumScaleFactor(0.75)
                        }
                        
                    
                    }
                
                }
                
            }
            .padding()
        }
    }
}
struct SongsView_Previews: PreviewProvider {
    static var previews: some View {
        SongsView()
    }
}
