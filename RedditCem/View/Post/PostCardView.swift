//
//  PostCardView.swift
//  RedditCem
//
//  Created by Cem Uğurlu on 21.07.2022.
//

import SwiftUI

struct PostCardView: View {
    let post: PostModel
    
    var body: some View {
        VStack(spacing: 5) {
            PostUserDetailsHeader(post: post)
            PostBodyView(post: post)
            Spacer()
            PostBottomView(post: post)
        }
        .padding()
        .background(Color("postBackgroundColor"))
                
        
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(post: .previewData)
    }
}
