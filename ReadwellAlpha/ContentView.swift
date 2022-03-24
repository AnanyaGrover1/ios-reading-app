//
//  ContentView.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/3/22.
//

import SwiftUI

struct ContentView: View {
//    @State private var showFavoritesOnly = false
//
//
//    var filteredBooks: [Book] {
//            booklist.filter { book in
//                (!showFavoritesOnly || book.isFavorite)
//            }
//        }
    var body: some View {
        NavigationView{

        
            VStack {
                ScrollView {
                            VStack {
                                Text("Home")
                                  .font(.largeTitle)
                                  .bold()
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
              
                ScrollView(.horizontal) {
                            HStack(spacing: 15) {
                                ForEach(booklist, id: \.id) { book in
                                    BookCard(book: book)
                                }
                            }.padding().frame(height: 300)
                }
                .padding(.top)
            
                Text("Horror")
                .font(.title)
                .bold()
                .frame(alignment: .leading)

                
                                
                                ScrollView(.horizontal) {
                                            HStack(spacing: 15) {
                                                ForEach(booklist.filter{$0.category == .horror}, id: \.id) { book in
                                                    BookCard(book: book)
                                                }
                                            }.padding().frame( height: 300)
                                }
                
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
}
}
            
            
       



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}

