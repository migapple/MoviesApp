//
//  MovieListView.swift
//  MovieListView
//
//  Created by Michel Garlandat on 04/09/2021.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct MovieListView: View {
    let movies: [MovieViewModel]
    
    var body: some View {
        List(self.movies, id: \.imdbId) { movie in
            HStack(alignment: .top) {
                URLImage(url: movie.poster)
                    .frame(width: 100, height: 120)
                    .cornerRadius(6)
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.headline)
                    
                    Text(movie.year)
                        .opacity(0.5)
                        .padding(.top, 10)
                }.padding(5)
                Spacer()
            }.contentShape(Rectangle())
        }
    }
}

//struct MovieListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieListView()
//    }
//}
