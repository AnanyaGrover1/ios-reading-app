//
//  NowPlayingBar.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/7/22.
//

// For the audio player bar at the bottom of the PDF reader view

import SwiftUI
import AVKit

struct NowPlayingBar<Content: View>: View {
    var content: Content
    
    @State var audioPlayer: AVAudioPlayer!
    var book: Book
    
     @ViewBuilder var body: some View {
        ZStack {
            
            Rectangle().foregroundColor(Color.white.opacity(0.0)).frame(width: UIScreen.main.bounds.size.width, height: 65).background(Blur())
                HStack {
                    
                        HStack {
                            // book cover art and name
                            Image(book.bookArtString).resizable().frame(width: 45, height: 45).shadow(radius: 6, x: 0, y: 3).padding(.leading)
                            Text(book.name).padding(.leading, 10)
                            Spacer()
                        }
                    
//                    Button(action:{
//                        self.audioPlayer.play()
//                    }) {
//                        Image(systemName: "play.fill").font(.title3)
//                    }.buttonStyle(PlainButtonStyle()).padding(.horizontal)
                    
                    // play button
                    Button(action: {
                        self.audioPlayer.play()
                    }) {
                        Image(systemName: "play.fill").resizable()
                            .frame(width: 20, height: 20)
                    
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                    } .padding(.horizontal)
                    
//                    Button(action: {
//                        self.audioPlayer.pause()
//                    }) {
//                        Image(systemName: "pause.fill").font(.title3)
//                    }.buttonStyle(PlainButtonStyle()).padding(.trailing, 30)
                    
                    // pause button
                    Button(action: {
                        self.audioPlayer.pause()
                    }) {
                        Image(systemName: "pause.fill").resizable()
                            .frame(width: 20, height: 20)
                   
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                        
                    } .padding(.trailing, 20)
                 
                   
                }
           
        }
         
        // which sound file to play 
        .onAppear {
            let sound = Bundle.main.path(forResource: "sampleaudio", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
}

    }
}

struct NowPlayingBar_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingBar(content: PDFTextView(book: booklist[0]), book: booklist[0])
    }
}
