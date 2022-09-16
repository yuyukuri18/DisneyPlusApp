//
//  MovieDetailView.swift
//  DisneyPulsClone
//
//  Created by cmStudent on 2022/09/02.
//

import SwiftUI

struct MovieDetailView: View {
    
    var movie: Movie
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedMovie: Movie?
    
    var body: some View {
        ZStack {
            GradientBackgroundView()
            ScrollView(.vertical, showsIndicators: false) {
                VStack (alignment: .leading) {
                    ZStack(alignment: .topTrailing) {
                        Image(movie.promoImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                        Button(action: { presentationMode.wrappedValue.dismiss() }) {
                            Image(systemName: "xmark.circle.fill")
                                .font(.title)
                                .foregroundColor(Color.white.opacity(0.8))
                        }
                        .padding(.trailing, 10)
                        .padding(.top, 10)
                    }
                    
                    Text(movie.title)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.leading, 20)
                    
                    actionButtons
                        .padding()
                    
                    ratingsDetail
                    
                    extraDetail
                    
                    movieDetails
                }
            }
        }
    }
    
    private var actionButtons: some View {
        HStack {
            Button(action: {
                selectedMovie = movie
            }) {
                HStack {
                    Image(systemName: "play.fill")
                    Text("PLAY")
                }
                .foregroundColor(.black)
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .background(RoundedRectangle(cornerRadius: 2).fill(Color.white))
            }
            .sheet(item: $selectedMovie) { movie in
                VideoView(videoUrl: movie.movieUrl)
            }
            
            Group {
                Button(action: {}) {
                    Image(systemName: "plus.circle")
                        .foregroundColor(.white)
                }
                
                Button(action: {}) {
                    Image(systemName: "arrow.down.circle")
                        .foregroundColor(.white)
                }
                
                Button(action: {}) {
                    Image(systemName: "person.2.circle")
                        .foregroundColor(.white)
                }
                
                Button(action: {}) {
                    Image(systemName: "arrow.up.circle")
                        .foregroundColor(.white)
                }
            }.font(.title)
        }
    }
    
    private var ratingsDetail: some View {
        HStack {
            Text("PG-13")
                .font(.body)
                .bold()
                .padding(5)
                .background(RoundedRectangle(cornerRadius: 2).stroke(Color.white))
            
            Text("2016")
            
            Circle()
                .frame(width: 5, height: 5)
            
            Text("2h 30m")
            
            Circle()
                .frame(width: 5, height: 5)
            
            Text("Science Fiction, Super Hero, Action")
        }
        .font(.caption)
        .foregroundColor(.white)
        .padding(.horizontal)
    }
    
    private var extraDetail: some View {
        HStack {
            Text("HD")
            
            Circle()
                .frame(width: 5, height: 5)
            
            HStack(spacing: 0) {
                Image(systemName: "film")
                Text("VISION")
            }
            
            Circle()
                .frame(width: 5, height: 5)
            
            Text("5.1")
        }
        .font(.caption)
        .foregroundColor(.white)
        .padding(.horizontal)
    }
    
    private var movieDetails: some View {
        Text(movie.details)
            .foregroundColor(.white)
            .padding()
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie.promos[0])
    }
}
