//
//  ContentView.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/3/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        
        NavigationView{
            
            // the main stack is vertical
            VStack {
                ScrollView {
                    // Home
                    VStack {
                        Text("Home")
                            .font(.largeTitle)
                            .bold()
                        // Horizontal stack with boxes for different genres/categories
                        HStack(alignment: .center) {
                            Button("Category 1") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            } .foregroundColor(.white)
                                .padding()
                                .background(Color.accentColor)
                                .cornerRadius(8)
                            
                            Button("Category 2") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }.foregroundColor(.white)
                                .padding()
                                .background(Color.accentColor)
                                .cornerRadius(8)
                            
                            Button("Category 3") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }.foregroundColor(.white)
                                .padding()
                                .background(Color.accentColor)
                                .cornerRadius(8)
                            
                        }
                        // horizontal scroll view which will display each book defined in the booklist
                        ScrollView(.horizontal) {
                            HStack(spacing: 15) {
                                ForEach(booklist, id: \.id) { book in
                                    BookCard(book: book)
                                }
                            }.padding().frame(height: 300)
                        }
                        .padding(.top)
                        
                        // Genre: Horror
                        Text("Horror")
                            .font(.title)
                            .bold()
                            .frame(alignment: .leading)
                        
                        // scroll view for books from a specific genre.
                        ScrollView(.horizontal) {
                            HStack(spacing: 15) {
                                // display every book whose category is horror
                                ForEach(booklist.filter{$0.category == .horror}, id: \.id) { book in
                                    BookCard(book: book)
                                }
                            }.padding().frame( height: 300)
                        }
                        
                        // Genre: Fables
                        Text("Fables")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .frame(alignment: .leading)
                        
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 15) {
                                ForEach(booklist.filter{$0.category == .fables}, id: \.id) { book in
                                    BookCard(book: book)
                                }
                            }.padding().frame( height: 300)
                        }
                        
                        // Alternate view for listing all books, vertically stacked.
                        Text("All Books")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.leading)
                        
                        VStack {
                            ForEach(booklist, id: \.id) {
                                book in TopBookCard(book: book)
                            }
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                }
                
            }
            
            // The code below is for the upper part: Navbar, search icon, hamburger menu etc.
            .navigationBarTitle("Readwell", displayMode: .inline)
            
            
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        print("Search for book")
                    }label: {
                        Label("Save", systemImage: "magnifyingglass")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        print("open menu")
                    }label: {
                        Label("Menu", systemImage: "line.horizontal.3")
                    }
                }
                //ToolbarItem(placement: .principal) {
                //    Text("Readwell")
                //}
            }
            
        }
        
        .navigationViewStyle(.stack)
        
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

