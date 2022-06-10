//
//  AudioPlayer.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/6/22.
//


import SwiftUI
import AVKit
 
struct AudioPlayerView: View {
    @State var audioPlayer: AVAudioPlayer!
    var book: Book

    var body: some View {
        ZStack {
            
            VStack {
                
                // book cover
                Image(book.bookArtString).resizable()
                    .frame(width: 300, height: 300)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .shadow(radius: 3)
                
                // book's name
                Text(book.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                // author
                Text(book.author)
                    .font(.headline)
                    .foregroundColor(.gray)
                 
                
                HStack {
                    Spacer()
                    // play button
                    Button(action: {
                        self.audioPlayer.play()
                    }) {
                        Image(systemName: "play.circle.fill").resizable()
                            .frame(width: 50, height: 50)
                    
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    // pause button
                    Button(action: {
                        self.audioPlayer.pause()
                    }) {
                        Image(systemName: "pause.circle.fill").resizable()
                            .frame(width: 50, height: 50)
                   
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                        
                    }
                 
                    Spacer()
                }
            }
        }
        // which sound file to play
        .onAppear {
            let sound = Bundle.main.path(forResource: "sampleaudio", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
           
        }
       
    }
}

struct AudioPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlayerView(book: booklist[0])
            
    }
}
