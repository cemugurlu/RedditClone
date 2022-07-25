//
//  PostView.swift
//  RedditCem
//
//  Created by Cem Uğurlu on 13.07.2022.
//

import SwiftUI

struct PostListView: View {
    @ObservedObject private var mainRepository = MainRepository.shared
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(mainRepository.postsList) { post in
                    PostCardView(post: post)
                }
            }
        }
        .onAppear(perform: MainRepository.shared.fetchPostsData)
        .padding(.vertical)
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
