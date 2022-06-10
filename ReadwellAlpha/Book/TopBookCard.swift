//
//  TopBookCard.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/3/22.
//

// This is the book card view for the vertical list in the home page

import SwiftUI

struct TopBookCard: View {
    var book: Book
        
        var body: some View {
            HStack {
                // Book cover
                Image(book.bookArtString)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:40, height: 40)
                    .clipShape(Circle())
                // Vertical stack for the text: Book's title and author name
                VStack(alignment: .leading) {
                    Text(book.name)
                        .font(.headline)
                    Text(book.author)
                        .font(.subheadline)
                        .foregroundColor(.accentColor)
                }
                Spacer()
                            MoreButtonView(book: book)
                        }.padding()
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.4), lineWidth: 1)
                        )
                        .shadow(radius: 1)
                    }
                }

struct MoreButtonView: View {
    var book: Book
    
    var body: some View {
        VStack {
                Circle().frame(width: 5, height: 5)
                Circle().frame(width: 5, height: 5)
                Circle().frame(width: 5, height: 5)
            }
            .foregroundColor(.accentColor)
    }
}
    

struct TopBookCard_Previews: PreviewProvider {
    static var previews: some View {
            TopBookCard(book: booklist[1])
                .previewLayout(.fixed(width: 380, height: 75))
        }
}
