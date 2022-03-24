//
//  BookDetailView.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/4/22.
//

import SwiftUI

struct BookDetailView: View {
    var book: Book
    var body: some View {
        
            ScrollView {
                VStack {
                    Text(book.name)
                       .font(.largeTitle)
                       .multilineTextAlignment(.center)
                    
                      
                    Image(book.bookArtString)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                        .cornerRadius(8)
                        .padding()
                    HStack {
                        Text("Author:")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                        Text(book.author)
                            .font(.subheadline)
                        Spacer()
                    }.padding([.leading, .trailing])
                    HStack {
                        Text("Published:")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                        Text(book.publishDate)
                            .font(.subheadline)
                        Spacer()
                    }.padding()
                    HStack {
                        Text("Summary:")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                            .padding(.bottom, -1.0)
                        Spacer()
                    }.padding([.leading])
                    Text(book.Description)
                        .font(.subheadline)
                        .padding([.leading, .bottom, .trailing])
                    
//                    Button("Read Book") {
//                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                    } .foregroundColor(.white)
//                        .padding()
//                        .background(Color.accentColor)
//                        .cornerRadius(8)
                    
                    NavigationLink(destination: PDFTextView(book: book)){
                        Text("Read Book")
                            .padding()
                    }
                    
                    NavigationLink(destination: AudioPlayerView(book : book)){
                        Text("Listen to Audiobook")
                            .padding()
                    }
                    

                }
                
                    .padding()
        }.accentColor(.blue)
     .navigationBarTitle("Book Profile", displayMode: .inline)
            
              
                
        
//        .navigationBarTitle("", displayMode: .inline)
        
        
        
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: booklist[1])
    }
}
