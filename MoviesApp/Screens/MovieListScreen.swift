//
//  MovieListScreen.swift
//  MovieListScreen
//
//  Created by Michel Garlandat on 04/09/2021.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct MovieListScreen: View {
    @ObservedObject private var movieListVM: MovieListViewModel
    @State private var movieName: String = ""
    
    init() {
        self.movieListVM = MovieListViewModel()
//        self.movieListVM.searchByName("batman")
    }
    
    var body: some View {
        VStack {
            TextField("Search", text: $movieName, onEditingChanged: { _ in }) {
                // perform the search
                self.movieListVM.searchByName(self.movieName)
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            
            
            
            MovieListView(movies: self.movieListVM.movies)
                .navigationBarTitle("Movies")
        }
        .padding()
        .embedNavigationView()
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
