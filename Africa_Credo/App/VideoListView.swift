//
//  VideoListView.swift
//  Africa_Credo
//
//  Created by Mykola Matsko on 10.11.2022.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView{
            List{
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }//Loop
            }//List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos" ,displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            }
        }//NavigationView
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
