//
//  PDFView.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/6/22.
//
//
import SwiftUI
import AVFAudio

struct PDFTextView: View {
    var book: Book

    var body: some View {
        // Document path
            let documentURL = Bundle.main.bundleURL.appendingPathComponent("Chimamanda_Ngozi_Adichie.pdf")
        
            
            VStack(alignment: .center) {
                HStack(alignment: .top) {
                    VStack(alignment: .center) {
                        
                        PDFKitView(url: documentURL)
                        // to occupy the full screen
                            .edgesIgnoringSafeArea(.all)
                    }

                }
                // for the audiobook player tab at the bottom
                NowPlayingBar(content: PDFTextView(book: book), book: book)
                
            }
            
        
        .padding(.top)
       
    
        .navigationBarTitle(Text(book.name), displayMode: .inline)
        
    }
       
}

#if DEBUG
struct PDFTextView_Previews: PreviewProvider {
    static var previews: some View {
        PDFTextView(book: booklist[0])
    }
}
#endif
